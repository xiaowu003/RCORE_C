#include "types.h"
#include "timer.h"
#include "riscv.h"
#include "defs.h"

// read the 'mtime' register
uint64 get_cycle(void) {
    return r_time();
}

// 设置触发定时器的time
void set_timer(uint64 stime) {
    sbi_set_timer(stime);
}

// 设置10ms后的定时器
void set_next_10ms_timer(void) {
    const uint64 timerbase = CPU_FREQUENCY / TICKS_PER_SEC;
    set_timer(get_cycle() + timerbase);
}

uint64 get_time_us(void) {
    return (get_cycle() / (CPU_FREQUENCY / MICRO_PER_SECOND));
}

// 设置'sie.stie'，使得S特权级时钟中断不会被屏蔽
void enable_timer_interrupt(void) {
    w_sie(r_sie() | SIE_STIE);
    // int x = r_sstatus();
    // x &= ~(SSTATUS_SPP);
    // x |= SSTATUS_SPIE;
    // w_sstatus(x);
}

void timer_init(void) {
    enable_timer_interrupt();
    
    // 设置第一个10ms的计时器
    set_next_10ms_timer();
}

void interrupt_query(void) {
    // uint64 cur_mie = r_mie();
    // uint64 cur_midelg = r_mideleg();
    uint64 cur_mstatus = r_mstatus();
    // printk("interrupt info : mie = 0x%x, midelg = 0x%x\n", cur_mie, cur_midelg);
    printk("interrupt info: mstatus = 0x%x\n", cur_mstatus);
}
