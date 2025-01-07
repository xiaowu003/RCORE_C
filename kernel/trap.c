#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/trap.h"
#include "./include/defs.h"
#include "./include/syscall.h"

extern char uservec[];
extern void __alltraps(void);
extern void __restore(TrapContext *cx);

void trap_init(void) {
    printk("[Test] trap.__alltraps = 0x%x\n", (uint64)__alltraps);

    // 重定向trap函数
    w_stvec((uint64)__alltraps);
    // w_stvec((uint64)uservec);
}

TrapContext *trap_handler(TrapContext *cx) {
    printk("[KERNEL->trap_handler] trap handler\n");
    uint64 scause = r_scause();
    uint64 stval = r_stval();

    printk("[KERNEL->trap_handler] scause = 0x%x\n", scause);
    printk("[KERNEL->trap_handler] stval = 0x%x\n", stval);
    
    // 根据原因处理trap
    uint64 trap = scause & 0x0fff;
    if (scause & 0x8000 == 1) {
        // interrupt
        panic("can't identify interrupt trap");
    } else {
        switch (trap) {
            case U_MODE_CALL:
                cx->sepc += 4;
                cx->regs.a0 = syscall(cx->regs.a7, cx->regs.a0, cx->regs.a1, cx->regs.a2);
                break;
            case ILLEGAL_INSTRUCTION:
                panic("illegal instruction, kernel kill app\n");
            case STORE_AMO_ACCESS_FAULT:
                panic("store/amo access fault, kernel kill app\n");
            default:
                panic("trap scause undefined.");
                break;
        }
    }
    return cx;
}

