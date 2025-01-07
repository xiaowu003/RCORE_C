#include "../include/Utypes.h"
#include "../include/user.h"

int64 main(void) {
    printf("[APP_01] app switch success\n");
    printf("[APP_01] try to execute privileged\n");
    asm volatile ("sret"
                   : 
                   : 
                   : );
    return 0;
}