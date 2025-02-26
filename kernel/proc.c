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
struct queue task_queue;

int getpid(void) {
    return get_cur_proc()->pid;
}

void proc_init(void) {
    printk("[K->proc_init] ok\n");
    struct Proc *p;

    for (p = proc; p < &proc[NPROC]; p++) {
        p->kstack = (uint64)kstack[p - proc];
        p->trapframe = (struct trapframe *)trapframe_all[p - proc];
        p->state = UNUSED;
        // printk("kstack = 0x%x, trapframe = 0x%x\n", p->kstack, p->trapframe); 
    }
    current_proc = &os_proc;
    os_proc.kstack = (uint64)boot_stack_top;
    os_proc.pid = OS_PID;
    init_queue(&task_queue);
}

int allocpid(void) {
    static int PID = 1;
    return PID++;
}

struct Proc *allocate_proc(void) {
    struct Proc *p;
    for (p = proc; p < &proc[NPROC]; p++) {
        if (p->state == UNUSED) {
            p->state = USED;
            p->pid = allocpid();
            p->pagetable = uvmcreate((uint64)p->trapframe);
            p->ustack = 0;
            memset((void *)p->trapframe, 0, sizeof(p->trapframe));
            memset(&p->context, 0, sizeof(p->context));
            p->context.ra = (uint64)usertrapret;  // trap入口
            p->context.sp = p->kstack + PGSIZE; // proc的内核栈顶
            p->max_page = 0;
            p->parent = NULL;
            p->exit_code = 0;
            return p;
        }
    }
    return 0;
}

struct Proc *get_cur_proc(void) {
    return current_proc;
}

// 从任务队列中得到一个任务
struct Proc *fetch_task(void) {
    int index = pop_queue(&task_queue);
    if (index < 0) {
        printk("[K->fetch_task]: No task to fetch\n");
        return NULL;
    }
    // printk("fetch task %d(pid=%d) to task queue\n", index, proc[index].pid);
    return proc + index;
}

// 向任务队列中添加任务
void add_task(struct Proc *p) {
    push_queue(&task_queue, p - proc);
    // printk("add task %d(pid=%d) to task queue\n", p - proc, p->pid);
}

void scheduler(void) {
    struct Proc *p;
    for (;;) {
        p = fetch_task();
        if (p == NULL) {
            panic("all app are over!\n");
        }

        printk("[K->scheduler]: switch to proc %d\n", p - proc);
        p->state = RUNNING;
        current_proc = p;
        __switch(&os_proc.context, &p->context);
    }
}

void sched(void) {
    // printk("sched once\n");
    struct Proc *p = get_cur_proc();
    if (p->state == RUNNING) {
        panic("sched running\n");
    }
    __switch(&p->context, &os_proc.context);
}

void yield(void) {
    if (current_proc->state == RUNNING) {
        current_proc->state = RUNNABLE;
    }
    add_task(current_proc);
    sched();
}

//  free a process's page table, and free the
// physical memory it refers to.
void freepagetable(pagetable_t pagetable, uint64 max_page) {
    uvmunmap(pagetable, TRAMPOLINE, 1, 0);
    
    // printk("uvmunmap trampoline ok\n");
    
    uvmunmap(pagetable, TRAPFRAME, 1, 0);
    
    // printk("uvmunmap trapframe ok\n");
    // printk("pg=0x%x, max_page = %d\n", pagetable, max_page);
    
    uvmfree(pagetable, max_page);

    // printk("free physical mem ok\n");
}

// free a process, reclaim process resources
void freeproc(struct Proc *p) {
    // printk("free proc pagetable\n");
    if (p->pagetable) {
        freepagetable(p->pagetable, p->max_page);
    }
    // printk("free proc pagetable ok\n");
    p->pagetable = NULL;
    p->state = UNUSED;
}


// 复制当前进程的数据到一个新的进程，并将当前进程作为新进程的父进程
int fork(void) {
    struct Proc *np;
    struct Proc *p = get_cur_proc();

    // allocate process.
    if ((np = allocate_proc()) == 0) {
        panic("alloc_proc\n");
    }
    

    // copy user memory form parent to child.
    if (uvmcopy(p->pagetable, np->pagetable, p->max_page) < 0) {
        panic("uvmcopy\n");
    }

    np->max_page = p->max_page;

    // copy saved user registers.
    *(np->trapframe) = *(p->trapframe);

    // cause fork to return 0 in the child.
    np->trapframe->regs.a0 = 0;
    np->parent = p;
    np->state = RUNNABLE;
    add_task(np);

    printk("new process pid=%d\n", np->pid);
    return np->pid;
}

// 执行指定名称的新进程
int exec(char *name) {
    int id = get_id_by_name(name);
    if (id < 0) {
        return -1;
    }

    struct Proc *p = get_cur_proc();
    uvmunmap(p->pagetable, 0, p->max_page, 1);
    p->max_page = 0;
    loader(id, p);
    return 0;
}

// 等待当前进程的任意一个子进程退出
int wait(int pid, int *code) {
    struct Proc *np;
    int havekids;

    struct Proc *p = get_cur_proc();

    for (;;) {
        // scan through table looking for exited children.
        havekids = 0;
        for (np = proc; np < &proc[NPROC]; np++) {
            if (np->state != UNUSED && np->parent == p &&
                (pid <= 0 || np->pid == pid)) {
                printk("have kids\n");
                havekids = 1;
                if (np->state == ZOMBIE) {
                    // found one
                    np->state = UNUSED;
                    pid = np->pid;
                    *code = np->exit_code;
                    return pid;
                }
            }
        }

        if (!havekids) {
            return -1;
        }
        p->state = RUNNABLE;
        printk("[K->wait]: pid=%d, exit code=%d\n", pid, *code);
        add_task(p);
        sched();
    }
}

// 某个进程自主选择退出
void exit(int code) {
    struct Proc *p = get_cur_proc();
    p->exit_code = code;
    
    printk("[EXIT]: proc pid=%d exit with exit_code=%d\n", p->pid, code);
    freeproc(p);
    if (p->parent != NULL) {
        // parent should 'wait'
        p->state = ZOMBIE;
    }

    // set the 'parent' of all children to NULL
    struct Proc *np;
    for (np = proc; np < &proc[NPROC]; np++) {
        if (np->parent == p) {
            np->parent = NULL;
        }
    }

    sched();
}