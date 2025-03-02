#include "./include/types.h"
#include "./include/defs.h"
#include "./include/file.h"

extern void bss_start(void);
extern void bss_end(void);

void clear_bss() {
    printk("[KERNEL->clear_bss] bss_start = 0x%x, bss_end = 0x%x\n",
            bss_start,bss_end);
    printk("[KERNEL->clear_bss] clear bss\n");
    
    volatile uint8* start = (volatile uint8*)&bss_start;
    volatile uint8* end = (volatile uint8*)&bss_end;

    while (start < end) {
        *start = 0;
        start++;
    }
}

int main(void) {
    clear_bss();
    proc_init();
    kernel_init();
    kvm_init();
    // load_init();
    trap_init();
    printk("begin file\n");
    plicinit();
    printk("plic ok\n");
    virtio_disk_init();
    printk("v disk ok\n");
    binit();
    printk("binit ok\n");
    fsinit();
    printk("finish file\n");
    timer_init();

    load_init_app();

    show_all_files();

    scheduler();

    panic("kernel panic error");

    // sbi_shut_down(0);

    return 0;
}
