#ifndef __DEFS_H__
#define __DEFS_H__

struct Context;
struct TrapContext;
struct SbiRet;
struct TimeVal;

/* trap.c */
void                    kerneltrap(void);
void                    set_kerneltrap(void);
void                    set_usertrap(void);
void                    unknown_trap(char*);
void                    trap_init(void);
// struct TrapContext*     trap_handler(struct TrapContext *);
void                    usertrap(void);
void                    usertrapret(void);

// string.c
uint32                  strlen(const int8 *);
void*                   memcpy(void *, const void *, uint64);
int32                   memcmp(const void *, const void *, uint64);
void                    memmove(uint8 *dest, const uint8 *, uint64);
void*                   memset(void *dest, uint8 val, uint32);
int32                   strcmp(const int8 *str1, const int8 *);
int32                   ifsubstr(char *, char *, int);
int8*                   strcpy(int8 *, const int8 *);
int8*                   strcat(int8 *, const int8 *);

// printk.c
void                    println(const int8 *fmt);
void                    print(const int8 *fmt);
void                    panic(const int8 *s);
int                     printk(const char *fmt, ...);

// sbi
void                    sbi_console_putchar(int8 ch);

// 推荐exit_code=0,=1时可以关闭，但是有报错 
void                    sbi_shut_down(uint64 exit_code);
void                    sbi_set_timer(uint64);
void                    sbi_get_sbi_spec_version(void);

// load.c
uint64                  get_kernel_stack(uint64);
uint64                  get_user_stack(uint64);
void                    load_init(void);
uint64                  load_app(uint64, uint64*);
uint64                  run_all_app(void);

// syscall.c
int64                   syscall(uint64, uint64, uint64, uint64);
int64                   sys_write(uint64 va, uint32 len);
int64                   sys_exit(uint64);
int64                   sys_stack_trace();

// proc.c
void                    proc_init(void);
struct Proc*            allocate_proc(void);
void                    scheduler(void);
void                    yield(void);
void                    sched(void);
struct Proc*            get_cur_proc(void);

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

// virtual_memory.c
int                     mappages(pagetable_t, uint64, uint64, uint64, int);
void                    kvmmap(pagetable_t, uint64, uint64, uint64, int);
pagetable_t             kvmmake(void);
void                    kvm_init(void);
void                    uvmunmap(pagetable_t, uint64, uint64, int);
pagetable_t             uvmcreate(void);
pte_t*                  walk(pagetable_t, uint64, int);
void                    freewalk(pagetable_t);
uint64                  walk_addr(pagetable_t, uint64);
uint64                  useraddr(pagetable_t, uint64);
int                     copyout(pagetable_t, uint64, char *, uint64);
int                     copyin(pagetable_t, char *, uint64 , uint64);
int                     copyinstr(pagetable_t pagetable, char *dst, uint64 srcva, uint64 max);


#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
#define MIN(a, b) (a < b ? a : b)
#define MAX(a, b) (a > b ? a : b)

#endif  /* defs.h */