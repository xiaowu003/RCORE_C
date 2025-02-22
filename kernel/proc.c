#include "types.h"
#include "defs.h"
#include "riscv.h"
#include "load.h"
#include "proc.h"

extern char __restore[];
extern char boot_stack_top[];
extern void __switch(struct Context*, struct Context*);

extern uint64 app_num;

struct Proc proc[NPROC];
__attribute__((aligned(16))) char kstack[NPROC][PGSIZE];
__attribute__((aligned(4096))) char trapframe_all[NPROC][TRAP_PAGE_SIZE];


struct Proc os_proc;
struct Proc *current_proc;

void proc_init(void) {
    printk("[KERNEL->proc_init] ok\n");
    struct Proc *p;

    for (p = proc; p < &proc[NPROC]; p++) {
        // p->kstack = get_kernel_stack((uint64)(p - proc));
        // p->ustack = get_user_stack((uint64)(p - proc));
        p->kstack = (uint64)kstack[p - proc];
        p->trapframe = (struct trapframe *)trapframe_all[p - proc];
        p->state = UNUSED;
        printk("kstack = 0x%x, trapframe = 0x%x\n", p->kstack, p->trapframe); 
    }
    current_proc = &os_proc;
    os_proc.kstack = (uint64)boot_stack_top;
}

struct Proc *allocate_proc(void) {
    struct Proc *p;
    for (p = proc; p < &proc[NPROC]; p++) {
        if (p->state == UNUSED) {
            p->state = READY;
            p->pagetable = 0;
            p->ustack = 0;
            memset((void *)p->trapframe, 0, sizeof(p->trapframe));
            memset(&p->context, 0, sizeof(p->context));
            p->context.ra = (uint64)usertrapret;  // trap入口
            p->context.sp = p->kstack + PGSIZE; // proc的内核栈顶
            return p;
        }
    }
    return 0;
}

struct Proc *get_cur_proc(void) {
    return current_proc;
}


void scheduler(void) {
    struct Proc *p;
    uint64 times = 0;

    for (;;) {
        for (p = proc; p < &proc[NPROC]; p++) {
            if (p->state == READY) {
                p->state = RUNNING;
                current_proc = p;
                printk("[KERNEL->scheduler] run a proc\n");
                times++;
                __switch(&os_proc.context, &p->context);
            }

            if (times >= app_num) {
                break;
            }
        }

        if (times >= app_num) {
            times = 0;
            break;
        }
    }

    printk("all apps run finish, exit qemu\n");
    sbi_shut_down(0);
}

void sched(void) {
    struct Proc *p = get_cur_proc();
    __switch(&p->context, &os_proc.context);
}

void yield(void) {
    if (current_proc->state == RUNNING) {
        current_proc->state = UNUSED;
    }
    sched();
}
