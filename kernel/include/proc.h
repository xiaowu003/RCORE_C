#ifndef __PROC_H__
#define __PROC_H__

#include "trap.h"

#define NPROC  3 

enum ProcStatus {
    UNUSED,     // 未初始化
    READY,      // 准备运行
    RUNNING,    // 正在运行
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
    pagetable_t             pagetable;              // 应用程序页表
    uint64                  kstack;                 // proc的内核栈底
    uint64                  ustack;                 // proc的用户栈底
    // TrapContext             trap_context;           // 发生异常时，特权级切换，保存上下文
    struct trapframe*       trapframe;           // 发生异常时，特权级切换，保存上下文
    struct Context          context;                // 用于保存进程内核态的寄存器信息，进程切换时使用
};

#endif