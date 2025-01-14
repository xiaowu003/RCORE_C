#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/defs.h"
#include "./include/trap.h"
#include "proc.h"
#include "load.h"

extern char _num_app[], boot_stack_top[], kernel_end[];

static uint64   kernel_stack[NPROC][KERNEL_STACK_SIZE] = {0}; // 每个proc都有一个内核栈
static uint8    user_stack[NPROC][USER_STACK_SIZE] = {0};          // user stack
// static uint64   current_app = 0;        // 记录当前执行到第几个APP了
// BUG把current_app变量放在user_stack后面时会导致current_app的值被改变，使app切换失败

uint64* app_info_ptr;
uint64  app_num;

uint64 get_kernel_stack(uint64 n) {
    printk("n = %d\n", n);
    return (uint64)kernel_stack[n];
}

uint64 get_user_stack(uint64 n) {
    return (uint64)user_stack[n];
}

void load_init(void) {
    if ((uint64)kernel_end >= APP_BASE_ADDRESS) {
        panic("kernel too large...\n");
    }

    app_info_ptr = (uint64*)_num_app;
    app_num = *app_info_ptr;
    app_info_ptr++; // 现在指向第一个app的地址处
    printk("[KERNEL->load_init] ok\n");
}

uint64 load_app(uint64 n, uint64* app_info) {
    uint64 start = app_info[2 * n], end = app_info[2 * n + 1];
    uint64 len = end - start;

    memset((void*)APP_BASE_ADDRESS + n * APP_MAX_SIZE, 0, APP_MAX_SIZE);
    memmove((void*)APP_BASE_ADDRESS + n * APP_MAX_SIZE, (void*)start, len);
    printk("[KERNEL->load_app] ok\n");
    return len;
}

uint64 run_all_app(void) {
    for (uint64 i = 0; i < *(uint64*)_num_app; i++) {
        struct Proc *p = allocate_proc();
        if (load_app(i, app_info_ptr) < 0) panic("load app error\n");

        p->trap_context.regs.sp = p->ustack + USER_STACK_SIZE;
        p->trap_context.sepc = (uint64)(APP_BASE_ADDRESS + i * APP_MAX_SIZE);
        p->trap_context.sstatus = (uint64)(r_sstatus() & (~SSTATUS_SPP));     // 将该进程的上一个状态设置为S-mode
        
        // 将TrapContext压入进程对应的内核栈
        memcpy((void*)(p->kstack + PGSIZE - sizeof(TrapContext)),
                &p->trap_context, (uint64)sizeof(TrapContext));

        // 压栈之后的内核栈顶需要修改
        p->context.sp = p->kstack + PGSIZE - sizeof(TrapContext);
    }

    printk("[KERNEL->run_all_app] ok\n");

    return 0;
}