#include "types.h"
#include "defs.h"
#include "riscv.h"
#include "load.h"
#include "proc.h"

extern char __restore[];
extern char boot_stack_top[];
extern void __switch(struct Context*, struct Context*);

struct Proc proc[NPROC];
struct Proc os_proc;
struct Proc *current_proc;

void proc_init(void) {
    printk("[KERNEL->proc_init] ok\n");
    struct Proc *p;

    for (p = proc; p < &proc[NPROC]; p++) {
        p->kstack = get_kernel_stack((uint64)(p - proc));
        p->ustack = get_user_stack((uint64)(p - proc));
        p->state = UNUSED;
        printk("kstack = 0x%x, ustack = 0x%x\n", p->kstack, p->ustack); 
    }

    os_proc.kstack = (uint64)boot_stack_top;
}

struct Proc *allocate_proc(void) {
    struct Proc *p;
    for (p = proc; p < &proc[NPROC]; p++) {
        if (p->state == UNUSED) {
            p->state = READY;

            memset(&p->trap_context, 0, sizeof(p->trap_context));
            
            memset(&p->context, 0, sizeof(p->context));
            p->context.ra = (uint64)__restore;
            p->context.sp = p->kstack + PGSIZE; // proc的内核栈顶
         
            return p;
        }
    }

    return 0;
}

struct Proc *cur_proc(void) {
    return current_proc;
}


void scheduler(void) {
    struct Proc *p;

    for (;;) {
        for (p = proc; p < &proc[NPROC]; p++) {
            if (p->state == READY) {
                p->state = RUNNING;
                current_proc = p;
                printk("[KERNEL->scheduler] run a proc\n");
                __switch(&os_proc.context, &p->context);
            }
        }
    }
}

void sched(void) {
    struct Proc *p = cur_proc();
    __switch(&p->context, &os_proc.context);
}

void yield(void) {
    current_proc->state = READY;
    sched();
}
