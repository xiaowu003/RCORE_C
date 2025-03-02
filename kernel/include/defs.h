#ifndef __DEFS_H__
#define __DEFS_H__

#include "const.h"
#include "sbi.h"
#include "string.h"
#include "proc.h"
#include "queue.h"
#include "load.h"
#include "virtual_memory.h"
#include "console.h"
#include "plic.h"
#include "virtio.h"

struct TrapContext;
struct SbiRet;
struct TimeVal;

/* trap.c */
void                    kerneltrap(void);
void                    set_kerneltrap(void);
void                    set_usertrap(void);
void                    unknown_trap(char*);
void                    trap_init(void);
void                    usertrap(void);
void                    usertrapret(void);



// printk.c
void                    println(const int8 *fmt);
void                    print(const int8 *fmt);
void                    panic(const int8 *s);
int                     printk(const char *fmt, ...);




// syscall.c
int64                   syscall(uint64, uint64, uint64, uint64);
int64                   sys_write(uint64 va, uint32 len);
void                    sys_exit(uint64);
int64                   sys_stack_trace();


// timer.c
uint64                  get_cycle(void);
void                    set_timer(uint64);
void                    set_next_10ms_timer(void);
uint64                  get_time_us(void);
void                    enable_timer_interrupt(void);
void                    timer_init(void);
void                    interrupt_query(void);

// kalloc.c
void                    freerange(void *, void *);
void                    kernel_init(void);
void                    kfree(void *);
void*                   kalloc(void);





#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
#define MIN(a, b) (a < b ? a : b)
#define MAX(a, b) (a > b ? a : b)

#endif  /* defs.h */