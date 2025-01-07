#include "../kernel/include/syscall.h"

.global write
write:
    li a7, SYS_WRITE
    ecall
    ret

.global exit
exit:
    li a7, SYS_EXIT
    ecall
    ret