#include "../include/Utypes.h"
#include "../include/user.h"

int64 main(void) {

    printf("[APP_00] hello world\n");
    printf("[APP_00] app_00 will fork!\n");

    int pid = fork();

    if (pid > 0) {
        printf("parent thread app_00, exit\n");
        int code;
        wait(pid, &code);
    } else {
        printf("child thread, exec app_01\n");
        exec("app1");
        printf("child thread won't run here!\n");
    }

    return 0;
}