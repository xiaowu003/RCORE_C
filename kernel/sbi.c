#include "types.h"
#include "sbi.h"

struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
                        unsigned long arg1, unsigned long arg2,
                        unsigned long arg3, unsigned long arg4,
                        unsigned long arg5) {
    struct sbiret ret;

    register unsigned long a0 asm("a0") = (unsigned long)(arg0);
    register unsigned long a1 asm("a1") = (unsigned long)(arg1);
    register unsigned long a2 asm("a2") = (unsigned long)(arg2);
    register unsigned long a3 asm("a3") = (unsigned long)(arg3);
    register unsigned long a4 asm("a4") = (unsigned long)(arg4);
    register unsigned long a5 asm("a5") = (unsigned long)(arg5);
    register unsigned long a6 asm("a6") = (unsigned long)(fid);
    register unsigned long a7 asm("a7") = (unsigned long)(ext);

    asm volatile ("ecall"
                   : "+r" (a0), "+r" (a1)
                   : "r" (a2), "r" (a3), "r" (a4), "r" (a5), "r" (a6), "r" (a7)
                   : "memory");
    
    ret.error = a0;
    ret.value = a1;

    return ret;
}

void sbi_console_putchar(int8 ch) {
    sbi_ecall(SBI_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
}

void sbi_shut_down(uint32 exit_code) {
    // sbi_ecall(SBI_SHUTDOWN, 0, exit_code, 0, 0, 0, 0, 0);
    // 实测之后发现 SBI_SHUTDOWN 不能正产运行，查找rustsbi手册
    // 发现了还有一个命令 SBI_RESET
    // struct sbiret sbi_system_reset(uin32_t reset_type, uint32_t reset_reason);
    // where :
    // RESET TYPES:    0x0 -> shutdown
    //                 0x1 -> cold reboot
    //                 ...
    // RESET REASONS:  0x0 -> no reason
    //                 0x1 -> system failure
    //                 ...
    // RESET TYPES对应a1变量， RESET REASONS对应a2变量
    // 可以实现关机功能

    sbi_ecall(SBI_RESET, 0, 0, exit_code, 0, 0, 0, 0);
    // 当exit_code = 0时，qemu正常退出无报错
    // 当exit_code = 1时，qemu退出，但是报错：make: *** [Makefile:51: run] Error 255
    // 暂不清楚原因
}
