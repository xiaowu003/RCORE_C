#include "../include/Utypes.h"
#include "../include/user.h"

int64 main(void) {
    printf("[APP_00] hello world\n");
    printf("[APP_00] app_00 will yield the cpu\n");
    
    yield();

    printf("[APP_00] app_00 won't run here\n");

    return 0;
}