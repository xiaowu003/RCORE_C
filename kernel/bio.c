

#include "./include/bio.h"
#include "./include/fs.h"
#include "./include/virtio.h"
#include "./include/defs.h"

struct {
    struct buf buf[NBUF];
    struct buf head;
} bcache;

void binit(void) {
    struct buf *b;

    // creat linked list of buffers
    bcache.head.prev = &bcache.head;
    bcache.head.next = &bcache.head;
    // 每次都将元素插入到head的下一个位置
    for (b = bcache.buf; b < bcache.buf + NBUF; b++) {
        b->next = bcache.head.next;
        b->prev = &bcache.head;
        bcache.head.next->prev = b;
        bcache.head.next = b;
    }
}

// Look through buffer cache for block on device dev.
// If not found, allocate a buffer.
static struct buf *bget(uint32 dev, uint32 blockno) {
    struct buf *b;

    // Is the block already cached？
    for (b = bcache.head.next; b != &bcache.head; b = b->next) {
        if (b->dev == dev && b->blockno == blockno) {
            b->refcnt++;
            return b;
        }
    }

    // Not cached.
    // Recycle the least recently used (LRU) unused buffer.
    for (b = bcache.head.prev; b != &bcache.head; b = b->prev) {
        if (b->refcnt == 0) {
            b->dev = dev;
            b->blockno = blockno;
            b->valid = 0;
            b->refcnt = 1;
            return b;
        }
    }

    panic("bget: no buffers");
    return 0;
}


const int R = 0;
const int W = 1;

// Return a buf with the contents of the indicated block.
// 返回一个从磁盘读取信息后的buf
struct buf *bread(uint32 dev, uint32 blockno) {
    struct buf *b;
    b = bget(dev, blockno);
    if (!b->valid) {
        virtio_disk_rw(b, R);
        b->valid = 1;
    }
    return b;
}

// Release a buffer
// Move to the head of the modst-recently-used list
void brelse(struct buf *b) {
    b->refcnt--;
    if(b->refcnt == 0) {
        // no one is waiting for it.
        b->next->prev = b->prev;
        b->prev->next = b->next;
        b->next = bcache.head.next;
        b->prev = &bcache.head;
        bcache.head.next->prev = b;
        bcache.head.next = b;
    }
}

// Write b's contents to disk
void bwrite(struct buf *b) {
    virtio_disk_rw(b, W);
}