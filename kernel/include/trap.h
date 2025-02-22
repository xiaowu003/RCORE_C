#ifndef __KERNEL_INCLUDE_TRAP_H__
#define __KERNEL_INCLUDE_TRAP_H__

struct AllRegister {
    uint64 zero;  // 0  Hard-wired zero
    uint64 ra;    // 1  Return address
    uint64 sp;    // 2  Stack pointer
    uint64 gp;    // 3  Global pointer
    uint64 tp;    // 4  Thread pointer
    uint64 t0;    // 5  Temporary
    uint64 t1;    // 6  Temporary
    uint64 t2;    // 7  Temporary
    uint64 s0;    // 8  Saved register/frame pointer
    uint64 s1;    // 9  Saved register
    uint64 a0;    // 10 Function argument/return value
    uint64 a1;    // 11 Function argument/return value
    uint64 a2;    // 12 Function argument
    uint64 a3;    // 13 Function argument
    uint64 a4;    // 14 Function argument
    uint64 a5;    // 15 Function argument
    uint64 a6;    // 16 Function argument
    uint64 a7;    // 17 Function argument
    uint64 s2;    // 18 Saved register
    uint64 s3;    // 19 Saved register
    uint64 s4;    // 20 Saved register
    uint64 s5;    // 21 Saved register
    uint64 s6;    // 22 Saved register
    uint64 s7;    // 23 Saved register
    uint64 s8;    // 24 Saved register
    uint64 s9;    // 25 Saved register
    uint64 s10;   // 26 Saved register
    uint64 s11;   // 27 Saved register
    uint64 t3;    // 28 Temporary
    uint64 t4;    // 29 Temporary
    uint64 t5;    // 30 Temporary
    uint64 t6;    // 31 Temporary
};

struct trapframe {
    struct AllRegister regs;
    uint64 sstatus;
    uint64 sepc;            // user program counter
    uint64 kernel_satp;     // kernel page table
    uint64 kernel_sp;       // top of process's kernel stack
    uint64 trap_handler;    // usertrap();
};

// interrupt
enum Interrupt {
    UserSoft = 0,
    SupervisorSoft,
    UserTimer = 4,
    SupervisorTimer,
    UserExternal = 8,
    SupervisorExternal,
};

// Exception
#define INSTRUCTION_ACCESS_FAULT        1
#define ILLEGAL_INSTRUCTION             2
#define LOAD_ACCESS_FAULT               5
#define STORE_AMO_ADDRESS_MISALIGNED    6
#define STORE_AMO_ACCESS_FAULT          7
#define U_MODE_CALL                     8
#define S_MODE_CALL                     9
#define INSTRUCTION_PAGE_FAULT          12
#define LOAD_PAGE_FAULT                 13
#define STORE_AMO_PAGE_FAULT            15

#endif  /*kernel/include/trap.h */