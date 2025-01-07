#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/defs.h"
#include "./include/trap.h"

extern void _num_app(void);
extern void app_0_start(void);
extern void app_0_end(void);
extern void boot_stack_top(void);

#define APP_BASE_ADDRESS    0x80400000
#define APP_MAX_SIZE        0x20000
#define KERNEL_STACK_SIZE   4096
#define USER_STACK_SIZE     4096

static uint64   current_app = 0;        // 记录当前执行到第几个APP了
static uint8    kernel_stack[KERNEL_STACK_SIZE] = {0};      // kernel stack
static uint8    user_stack[USER_STACK_SIZE] = {0};          // user stack
// static uint64   current_app = 0;        // 记录当前执行到第几个APP了
// BUG把current_app变量放在user_stack后面时会导致current_app的值被改变，导致app切换失败

// Get the top kernel stack address
uint64 get_kernel_stack_top(void) {
    return (uint64)(kernel_stack + KERNEL_STACK_SIZE - 1);
}

// Get the top user stack address
uint64 get_user_stack_top(void) {
    return (uint64)(user_stack + USER_STACK_SIZE - 1);
}


void load_app(void) {
    uint64* num_app_ptr = (uint64*) _num_app;
    uint64 app_nums = *num_app_ptr;  // 解引用得到app数量
    num_app_ptr++;  // 指向app_0_start

    // 刷新缓冲区
    asm volatile("fence.i");
    
    for (uint64 i = 0; i < app_nums; i++) {
        uint8* app_addr;

        // 指向每个APP被加载到的首地址
        app_addr = (uint8*)(APP_BASE_ADDRESS + APP_MAX_SIZE * i);

        printk("[KERNEL->load_app] app%d 0x%x - 0x%x\n", 
                i, num_app_ptr[i * 2], num_app_ptr[i * 2 + 1]);
        
        for (uint8* target = (uint8*)num_app_ptr[i * 2]; 
             (uint64)target <= (uint64)num_app_ptr[i * 2 + 1];
             target++, app_addr++) {
            *app_addr = *target;
        }

        printk("[KERNEL->load_app] app%d addr_end = 0x%x\n",
                i, --app_addr);
    }
}

void run_app(void) {
    printk("[KERNEL->run_app] cur_app = %d, _num_app = %d\n",
            current_app, *(uint64*)_num_app);
    if (current_app >= *(uint64*)_num_app) {
        panic("run_app : all app execed\n");
    }

    // 设置TrapContext，准备传给app
    const uint64 sstatus = r_sstatus();

    static TrapContext tc = {
        {0},
        0,
        0
    };
    // 确保sret后跳转到相应的app
    tc.sepc = APP_BASE_ADDRESS + APP_MAX_SIZE * current_app;
    current_app++;

    tc.sstatus = sstatus & (~SSTATUS_SPP);  // 将上一个状态置为S模式

    // 保证sscratch指向user_stack
    tc.regs.sp = get_user_stack_top();
    printk("[KERNEL->run_app] tc.regs.sp = 0x%x\n", tc.regs.sp);

    // 将tc压入kernel_stack
    uint64 store_posi = get_kernel_stack_top() - sizeof(TrapContext);
    *(TrapContext*) store_posi = tc;

    extern void __restore(TrapContext *);
    __restore(&tc);
    
    panic("[KERNEL->run_app] never go here!");
}