#include "./include/types.h"
#include "./include/defs.h"
#include "./include/syscall.h"


int64 sys_write(int8 *buf) {
    printk("%s",buf);
    return 0;
}

int64 sys_exit(uint64 exit_id) {
    printk("[KERNEL->sys_exit] app exit %d\n", exit_id);
    run_app();
    //sbi_shut_down(1);
    return 0;
}

int64 sys_stack_trace() {
    printk("[KERNEL->sys_stack_trace] stack trace begin.\n");

    uint64 fp;
    asm volatile("mv %0, s0" : "=r"(fp));

    while (fp != 0) {
        uint64 saved_ra = *(uint64*)(fp - 1);
        uint64 saved_fp = *(uint64*)(fp - 2);
        
        printk("0x%x, fp = 0x%x\n", saved_ra, saved_fp);
        
        fp = saved_fp;
    }

    printk("[KERNEL->sys_stack_trace] stack trace end.\n");

    return 0;
}

int64 syscall(uint64 id, uint64 arg0, uint64 arg1, uint64 arg2) {
    uint64 ret;
    switch (id) {
        case SYS_WRITE:
            ret = sys_write((int8*)arg0);
            break;
        case SYS_EXIT:
            ret = sys_exit(arg0);
            break;
        case SYS_STACK_TRACE:
            ret = sys_stack_trace();
            break;
        default:
            printk("[syscall] error id = %x\n", id);
            panic("kernel: syscall id undefined.");
            break;
    }

    return ret;
}

