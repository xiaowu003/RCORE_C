#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/defs.h"
#include "./include/trap.h"
#include "proc.h"
#include "load.h"

extern uint64 _num_app[], boot_stack_top[], kernel_end[];
extern char app_0_start[], app_1_start[], app_2_start[], app_2_end[];

// static uint64   kernel_stack[NPROC][KERNEL_STACK_SIZE] = {0}; // 每个proc都有一个内核栈
// static uint8    user_stack[NPROC][USER_STACK_SIZE] = {0};          // user stack
// static uint64   current_app = 0;        // 记录当前执行到第几个APP了
// BUG把current_app变量放在user_stack后面时会导致current_app的值被改变，使app切换失败

uint64* app_info_ptr;
uint64  app_num;

// uint64 get_kernel_stack(uint64 n) {
//     printk("n = %d\n", n);
//     return (uint64)kernel_stack[n];
// }

// uint64 get_user_stack(uint64 n) {
//     return (uint64)user_stack[n];
// }

void load_init(void) {
    if ((uint64)kernel_end >= APP_BASE_ADDRESS) {
        panic("kernel too large...\n");
    }

    app_info_ptr = (uint64*)_num_app;
    
    app_num = *app_info_ptr;
    printk("app number = %d\n", app_num);
    app_info_ptr++; // 现在指向第一个app的地址处
    printk("[K->load_init] ok\n");
}

// uint64 load_app(uint64 n, uint64* app_info) {
//     uint64 start = app_info[2 * n], end = app_info[2 * n + 1];
//     uint64 len = end - start;

//     memset((void*)APP_BASE_ADDRESS + n * APP_MAX_SIZE, 0, APP_MAX_SIZE);
//     memmove((void*)APP_BASE_ADDRESS + n * APP_MAX_SIZE, (void*)start, len);
//     printk("[KERNEL->load_app] ok\n");
//     return len;
// }

pagetable_t load_app_pgtbl(uint64 start, uint64 end, struct Proc *p) {
    pagetable_t pg = uvmcreate();   // 为用户程序创建页表

    if (mappages(pg, TRAPFRAME, PGSIZE, (uint64)p->trapframe, PTE_R | PTE_W) < 0) {
        panic("load_app_pgtbl trapframe mappages fail\n");
    }
    if (!PGALIGNED(start)) {
        printk("load_app_pgtbl, start not aligned, start = 0x%x\n", start);
        panic("start");
    }
    if (!PGALIGNED(end)) {
        printk("Some kernel data maybe mapped to user, start = 0x%x, end = 0x%x\n", start, end);
    }
    end = PGROUNDUP(end);
    uint64 length = end - start;

    printk("mappages app start = 0x%x, length = 0x%x\n", start, length);

    if (mappages(pg, APP_BASE_ADDRESS_VA, length, start, PTE_U | PTE_R | PTE_W | PTE_X) != 0) {
        panic("APP_BASE_ADDRESS_VA map error\n");
    }
    
    p->pagetable = pg;
    
    uint64 ustack_bottom_vaddr = APP_BASE_ADDRESS_VA + length + PGSIZE;
    if (USER_STACK_SIZE != PGSIZE) {
        panic("user stack size error\n");
    }
    mappages(pg, ustack_bottom_vaddr, USER_STACK_SIZE, (uint64)kalloc(), PTE_U | PTE_R | PTE_W | PTE_X);
    p->ustack = ustack_bottom_vaddr;
    p->trapframe->sepc = APP_BASE_ADDRESS_VA;
    p->trapframe->regs.sp = p->ustack + PGSIZE;   // sp指向用户栈的栈顶
    p->trapframe->sstatus = (uint64)(r_sstatus() & (~SSTATUS_SPP) | (SSTATUS_SPIE));
    
    return pg;
}

uint64 run_all_app(void) {
    for (uint64 i = 0; i < app_num; i++) {
        struct Proc *p = allocate_proc();
        printk("app[%d]  start = 0x%x, end = 0x%x\n", i, app_info_ptr[i], app_info_ptr[i + 1]);
        load_app_pgtbl(app_info_ptr[i], app_info_ptr[i + 1], p);

        p->state = READY;
    }

    printk("[KERNEL->run_all_app] ok\n");

    return 0;
}