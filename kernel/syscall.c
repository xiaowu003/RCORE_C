#include "types.h"
#include "defs.h"
#include "proc.h"
#include "syscall.h"
#include "timer.h"
#include "riscv.h"
#include "console.h"

int64 sys_write(uint64 va, uint32 len) {
    struct Proc *p = get_cur_proc();
    char str[MAX_STR_LEN];

    int size = copyinstr(p->pagetable, str, va, MIN(len, MAX_STR_LEN));
    for (int i = 0; i < size; i++) {
        sbi_console_putchar(str[i]);
    }

    // printk("%s",buf);
    return size;
}

__attribute__((noreturn)) void sys_exit(uint64 exit_id) {
    exit(exit_id);
    __builtin_unreachable();
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

int64 sys_yield() {
    yield();
    return 0;
}

uint64 sys_get_tiem(struct TimeVal *val) {
    uint64 cycle = get_cycle();
    val->sec = cycle / CPU_FREQUENCY;
    val->usec = (cycle % CPU_FREQUENCY) * 1000000 / CPU_FREQUENCY;
    return 0;
}

uint64 sys_read(int fd, uint64 va, uint64 len) {

    if (fd != STDIN) {
        return -1;
    }

    struct Proc *p = get_cur_proc();
    char str[MAX_STR_LEN];
    len = MIN(len, MAX_STR_LEN);

    for (int i = 0; i < len; i++) {
        // consgetc() 会阻塞式的等待读取一个 char
        int c = consgetc();
        str[i] = c;
    }

    copyout(p->pagetable, va, str, len);
    return len;
}

uint64 sys_fork(void) {
    printk("fork!\n");
    return fork();
}

uint64 sys_exec(uint64 va) {
    struct Proc *p = get_cur_proc();
    char name[MAX_STR_LEN];
    
    copyinstr(p->pagetable, name, va, MAX_STR_LEN);
    printk("sys_exec %s\n", name);

    return exec(name);
}

uint64 sys_waitpid(int pid, uint64 va) {
    struct Proc *p = get_cur_proc();
    int *code = (int *)useraddr(p->pagetable, va);
    return wait(pid, code);
}

int64 syscall(uint64 id, uint64 arg0, uint64 arg1, uint64 arg2) {
    uint64 ret;
    switch (id) {
        case SYS_WRITE:
            ret = sys_write(arg0, arg1);
            break;
        case SYS_EXIT:
            sys_exit(arg0);
            break;
        case SYS_STACK_TRACE:
            ret = sys_stack_trace();
            break;
        case SYS_YIELD:
            ret = sys_yield();
            break;
        case SYS_GET_TIME:
            ret = sys_get_tiem((struct TimeVal*)arg0);
            break;
        case SYS_read:
            printk("len = %d\n", arg2);
            ret = sys_read(arg0, arg1, arg2);
            break;
        case SYS_exec:
            ret = sys_exec(arg0);
            break;
        case SYS_fork:
            ret = sys_fork();
            break;
        case SYS_waitpid:
            printk("fork arg0=%d, arg1=%d\n",arg0, arg1);
            ret = sys_waitpid(arg0, arg1);
            break;
        default:
            printk("[syscall] error id = %x\n", id);
            panic("kernel: syscall id undefined.");
            break;
    }

    return ret;
}

