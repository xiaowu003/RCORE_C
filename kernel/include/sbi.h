#ifndef __SBI_H__
#define __SBI_H__

enum sbi_ext_id {
    SBI_SET_TIMER = 0x54494D45,                 // 设置定时器 EID : 0x54494D45
    SBI_CONSOLE_PUTCHAR = 0x1,                  // 输出一个字符
    SBI_CONSOLE_GETCHAR = 0x2,                  // 获取一个字符
    SBI_CLEAR_IPI = 0x3,                        // 清除中断处理器中断IPI
    SBI_SEND_IPI = 0x4,                         // 发送IPI
    SBI_REMOTE_FENCE_I = 0x5,                   // 远程指令缓存刷新
    SBI_REMOTE_SFENCE_VMA = 0x6,                // 远程地址空间刷新
    SBI_REMOTE_SFENCE_VMA_ASID = 0x7,           // 远程地址刷新，基于ASID地址空间标识符
    SBI_SHUTDOWN = 0x8,                         // 关闭系统
    SBI_RESET = 0x53525354,                     // 系统复位
    SBI_SPEC_VERSION = 0x10,                    // sbi的版本
};

struct SbiRet {
    long error;
    long value;
};

#endif /* sbi.h */