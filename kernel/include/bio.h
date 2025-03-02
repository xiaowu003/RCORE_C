#ifndef BIO_H__
#define BIO_H__

#include "types.h"
#include "fs.h"

// 数据块缓存结构体
struct buf {
    int     valid;          // has data been read from disk?
    int     disk;           // does disk "own" buf?
    uint32  dev;
    uint32  blockno;
    uint32  refcnt;
    struct  buf *prev;      // LRU cache list
    struct  buf *next;
    uint8   data[BSIZE];
};

void                binit(void);
struct buf *        bread(uint32, uint32);
void                brelse(struct buf *);
void                bwrite(struct buf *);
void                bpin(struct buf *);
void                bunpin(struct buf *);


#endif