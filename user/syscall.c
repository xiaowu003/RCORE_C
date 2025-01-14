#include "./include/Utypes.h"
#include "../kernel/include/syscall.h"
int64 Usyscall(int sys_id,  unsigned long arg0,
              unsigned long arg1, unsigned long arg2,
              unsigned long arg3, unsigned long arg4,
              unsigned long arg5, unsigned long arg6) {

    register unsigned long a0 asm("a0") = (unsigned long)(arg0);
    register unsigned long a1 asm("a1") = (unsigned long)(arg1);
    register unsigned long a2 asm("a2") = (unsigned long)(arg2);
    register unsigned long a3 asm("a3") = (unsigned long)(arg3);
    register unsigned long a4 asm("a4") = (unsigned long)(arg4);
    register unsigned long a5 asm("a5") = (unsigned long)(arg5);
    register unsigned long a6 asm("a6") = (unsigned long)(arg6);
    register unsigned long a7 asm("a7") = (unsigned long)(sys_id);

    asm volatile ("ecall"
                   : "+r" (a0)
                   : "r" (a1), "r" (a2), "r" (a3), "r" (a4), "r" (a5), "r" (a6), "r" (a7)
                   : "memory");

    return (int64)a0;
}


int64 write(int8* ch) {
    return Usyscall(SYS_WRITE, (uint64)ch, 0, 0, 0, 0, 0, 0);
}

int64 exit(int64 id) {
    return Usyscall(SYS_EXIT, id, 0, 0, 0, 0, 0, 0);
}

int64 yield(void) {
    return Usyscall(SYS_YIELD, 0, 0, 0, 0, 0, 0, 0);
}

void printf(const int8* fmt) {
    write(fmt);
}
