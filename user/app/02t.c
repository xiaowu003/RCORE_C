#include "../include/Utypes.h"
#include "../include/user.h"

int64 main(void) {
    printf("[APP_02] app switch success\n");
    
    uint64 current_time = get_time();
    
    printf("[APP_02] test sleep start\n");
    
    
    uint64 wait_for = current_time + 3000;
    // while (get_time() < wait_for) {
    //     // yield();
    // }

    while (1) {
        if (get_time() > wait_for) {
            printf("[APP_02] exit while loop\n");
            // yield();
            break;
        }
    }

    printf("[APP_02] test slepp ok!\n");

    return 0;
}