#ifndef __TIMER_H__
#define __TIMER_H__

#define CPU_FREQUENCY   10000000    // qemu的CPU频率 10MHz
#define TICKS_PER_SEC   100         // 每个tick是10ms

#define MICRO_PER_SECOND    1000000    // 1s = 1000000us

struct TimeVal {
    uint64 sec;     // 秒
    uint64 usec;    // 微秒
};

#endif
