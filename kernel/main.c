#include "./include/types.h"
#include "./include/defs.h"

extern void bss_start(void);
extern void bss_end(void);

void clear_bss() {
    printk("[KERNEL->clear_bss] bss_start = 0x%x, bss_end = 0x%x\n",
            bss_start,bss_end);
    printk("[KERNEL->clear_bss] clear bss\n");
    
    volatile uint8* start = (volatile uint8*)&bss_start;
    volatile uint8* end = (volatile uint8*)&bss_start;

    while (start < end) {
        *start = 0;
        start++;
    }
}

int main(void) {
    clear_bss();

    trap_init();

    load_app();

    run_app();

    panic("kernel panic error");

    // sbi_shut_down(0);

    return 0;
}