#ifndef __USER_H__
#define __USER_H__

#include "../../kernel/include/syscall.h"

// syscall.c
void        printf(const char *);
int64       exit(int64);
int64       yield(void);
uint64       get_time();
#endif /* user.h */