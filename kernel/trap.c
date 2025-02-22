#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/trap.h"
#include "./include/defs.h"
#include "./include/syscall.h"
#include "./include/proc.h"

extern char trampoline[], __alltraps[], __restore[];

void kerneltrap(void) {

    if ((r_sstatus() & SSTATUS_SPP) == 0) {
        panic("kerneltrap: not from supervisor mode\n");
    }

    uint64 cause  = r_scause();
    printk("case = %d, %x\n",cause, cause);

    if (cause & (1ULL << 63)) {
        cause &= ~(1ULL << 63);
        switch (cause) {
            case SupervisorTimer:
                printk("time interrupt!\n");
                set_next_10ms_timer();
                yield();
                break;
            default:
                unknown_trap("interrupt");
                break;
        }
    }

    panic("trap from kernel\n");
}

void set_kerneltrap(void) {
    w_stvec((uint64)kerneltrap & ~0x3);
}

void set_usertrap(void) {
    // TRAMPOLINE 是跳板的基地址
    // __alltraps - trampoline是 __alltraps的地址偏移量
    // 0x3 是为了对齐到4字节地址
    w_stvec(((uint64)TRAMPOLINE + (__alltraps - trampoline)) & ~0x3);
}

void unknown_trap(char *trap_type) {
    printk("\n[Panic] unknown %s trap: 0x%x, stval = 0x%x\n", trap_type, r_scause(), r_stval());
    sbi_shut_down(1);
}

void trap_init(void) {
    // printk("[KERNEL->trap_init] trap.__alltraps = 0x%x\n", (uint64)__alltraps);

    // 重定向trap函数
    // w_stvec((uint64)__alltraps);
    set_kerneltrap();
    printk("[K->trap_init] ok\n");
}

// return to user space
void usertrapret(void) {
    set_usertrap();
    struct trapframe *trapframe = get_cur_proc()->trapframe;
    trapframe->kernel_satp = r_satp();      // kernel page table
    trapframe->kernel_sp = get_cur_proc()->kstack + PGSIZE; // process's kernel stack
    trapframe->trap_handler = (uint64)usertrap;     // 设置发生trap时跳转到usertrap处理
    
    // set up the registers that trap.s's sret will use
    // to get to user space.
    w_sepc(trapframe->sepc);

    // set S previous privilege mode to user
    uint64 x = r_sstatus();
    x &= ~SSTATUS_SPP;  // clear SPP to 0 for user mode
    x |= SSTATUS_SPP;   // enable interrupts in user mode
    w_sstatus(x);

    // tell trap.s the user page table to switch to.
    uint64 satp = MAKE_SATP(get_cur_proc()->pagetable);
    uint64 fn = TRAMPOLINE + (__restore - trampoline);
    printk("return to user : %x\n", trapframe->sepc);
    ((void (*)(uint64, uint64))fn)(TRAPFRAME, satp);
}


// handle an interrupt, exception or system call from user space.
// called from trap.s
void usertrap(void) {
    set_kerneltrap();

    struct trapframe *trapframe = (get_cur_proc())->trapframe;
    printk("trap from user epc = %x\n", trapframe->sepc);
    
    if ((r_sstatus() & SSTATUS_SPP) != 0) {
        panic("usertrap: not from user mode\n");
    }

    uint64 cause  = r_scause();
    if (cause & (1ULL << 63)) {
        cause &= ~(1ULL << 63);
        switch (cause) {
            case SupervisorTimer:
                printk("time interrupt!\n");
                set_next_10ms_timer();
                yield();
                break;
            default:
                unknown_trap("interrupt");
                break;
        }
    } else {
        printk("exception cause = %d\n", cause);
        
        switch (cause) {
            case U_MODE_CALL:
                trapframe->sepc += 4;
                trapframe->regs.a0 = syscall(trapframe->regs.a7, trapframe->regs.a0, trapframe->regs.a1, trapframe->regs.a2);
                break;
            case ILLEGAL_INSTRUCTION:
                panic("illegal instruction, kernel kill app\n");
                break;
            case STORE_AMO_ACCESS_FAULT:
                panic("store/amo access fault, kernel kill app\n");
                break;
            case LOAD_ACCESS_FAULT:
                panic("load access fault, kernel kill app\n");
            default:
                unknown_trap("Exception");
                break;
        }
    }
    
    usertrapret();
}



// struct trapframe *trap_handler(TrapContext *cx) {
//     printk("[KERNEL->trap_handler] trap handler\n");
//     uint64 scause = r_scause();
//     uint64 stval = r_stval();

//     printk("[KERNEL->trap_handler] scause = 0x%x\n", scause);
//     printk("[KERNEL->trap_handler] stval = 0x%x\n", stval);
    
//     // 根据原因处理trap
//     uint64 trap = scause & 0x0fff;
//     if (scause & (1ULL << 63)) {
//         // interrupt
//         scause &= ~(1ULL << 63);
//         switch (scause) {
//             case SupervisorTimer:
//                 printk("[KERNEL->trap_handler] timer interrupt\n");
//                 set_next_10ms_timer();
//                 yield();
//                 break;
//             default:
//                 unknown_trap("Interrupt");
//                 break;
//         }
//     } else {
//         switch (trap) {
//             case U_MODE_CALL:
//                 cx->sepc += 4;
//                 cx->regs.a0 = syscall(cx->regs.a7, cx->regs.a0, cx->regs.a1, cx->regs.a2);
//                 break;
//             case ILLEGAL_INSTRUCTION:
//                 panic("illegal instruction, kernel kill app\n");
//                 break;
//             case STORE_AMO_ACCESS_FAULT:
//                 panic("store/amo access fault, kernel kill app\n");
//                 break;
//             case LOAD_ACCESS_FAULT:
//                 panic("load access fault, kernel kill app\n");
//             default:
//                 unknown_trap("Exception");
//                 break;
//         }
//     }
//     return cx;
// }

