#ifndef __PROC_H__
#define __PROC_H__

#include "trap.h"

#define NPROC       (512)
#define OS_PID      (0)

enum ProcStatus {
    UNUSED,     // 未初始化
    USED,       // 已初始化
    SLEEPING,   // 睡眠中
    RUNNABLE,   // 可以运行
    // READY,      // 准备运行
    RUNNING,    // 正在运行
    ZOMBIE,     // 僵尸进程
    EXITED,     // 已退出
};

// structure used int process switch
struct Context {
    uint64 ra;
    uint64 sp;

    // callee-saved
    uint64 s0;
    uint64 s1;
    uint64 s2;
    uint64 s3;
    uint64 s4;
    uint64 s5;
    uint64 s6;
    uint64 s7;
    uint64 s8;
    uint64 s9;
    uint64 s10;
    uint64 s11;
};

struct Proc {
    enum ProcStatus         state;                  // 进程状态
    int                     pid;                    // 进程标识符
    pagetable_t             pagetable;              // 应用程序页表
    uint64                  kstack;                 // proc的内核栈底
    uint64                  ustack;                 // proc的用户栈底
    struct trapframe*       trapframe;           // 发生异常时，特权级切换，保存上下文
    struct Context          context;                // 用于保存进程内核态的寄存器信息，进程切换时使用
    uint64                  max_page;               // memory size
    struct Proc *           parent;                 // parent process
    uint64                  exit_code;              // process exit code
};


// proc.c
int                     getpid(void);
void                    proc_init(void);
int                     allocpid(void);
struct Proc*            allocate_proc(void);
struct Proc*            get_cur_proc(void);
struct Proc*            fetch_task(void);
void                    add_task(struct Proc *p);
void                    scheduler(void);
void                    yield(void);
void                    sched(void);
void                    freepagetable(pagetable_t pagetable, uint64 max_page);
void                    freeproc(struct Proc *p);
int                     fork(void);
int                     exec(char *name);
int                     wait(int pid, int *code);
void                    exit(int code);

#endif