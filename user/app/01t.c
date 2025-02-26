#include "../include/Utypes.h"
#include "../include/user.h"

int64 main(void) {

    printf("[APP_01] app_01 exec success\n");
    
    printf("[APP_01] fork and exec app_02\n");

    int pid = fork();
    if (pid > 0) {
        printf("[APP_01] app_01 exit\n");
        return 0;
    } else {
        printf("[APP_01] exec app_02\n");
        exec("app2");
        return 0;
    }
    
    printf("[APP_01] can't run here!\n");
    return 0;
}