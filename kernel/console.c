#include "./include/console.h"
#include "./include/types.h"
#include "./include/sbi.h"

int consgetc() {
    return sbi_getchar();
}