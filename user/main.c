#include "./include/Utypes.h"
#include "./include/user.h"

extern int64 main(void);

void clear_bss(void) {
    extern uint8 start_bss, end_bss;

    volatile uint8* start \
        = (volatile uint8*)&start_bss;
    volatile uint8* end \
        = (volatile uint8*)&end_bss;

    while (start < end) {
        *start++ = 0;
    }
}

int lib_main(void) {
    clear_bss();
    printf("[user_lib] init ok\n");
    printf("[user lib] second test.\n");
    exit(main());
    return 0;
}