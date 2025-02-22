#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/defs.h"

extern char kernel_end[];

struct linklist{
    struct linklist *next;
};

// 一个环形链表，记录所有未使用的内存
struct {
    struct linklist *freelist;
} kmem;

void freerange(void *pa_start, void *pa_end) {
    char *p;
    p = (char*)PGROUNDUP((uint64)pa_start);
    for (; p + PGSIZE <= (char*)pa_end; p += PGSIZE) {
        kfree(p);
    }
}

// 将内核之外的物理空间初始化，并将未使用的内存放入kmem链表中
void kernel_init() {
    freerange(kernel_end, (void*)PHYSTOP);
    printk("kernel_end = 0x%x, PHYSTOP = 0x%x\n", kernel_end, PHYSTOP);
}

// 释放一个pa内存，并将该内存放入kmem环形链表中
void kfree(void *pa) {
    struct linklist *l;
    if (((uint64)pa % PGSIZE) != 0 || (char*)pa < kernel_end ||
        (uint64)pa >= PHYSTOP) {
        panic("kfree");
    }

    // 将要释放的pa充满垃圾数据
    memset(pa, 1, PGSIZE);
    l = (struct linklist *)pa;
    l->next = kmem.freelist;
    kmem.freelist = l;
}

// 从kmem空闲链表中找到一块空闲内存，并将内存的值初始化为5
void* kalloc(void) {
    struct linklist *l;
    // 在kmem空闲链表中获得一块内存
    l = kmem.freelist;
    if (l) {
        kmem.freelist = l->next;
        memset((char*)l, 5, PGSIZE);    // fill with junk
    }
    // printk("l = 0x%x\n", l);
    return (void*)l;
}