#ifndef __USER_H__
#define __USER_H__

#include "../../kernel/include/syscall.h"

// syscall.c
void        printf(int8* fmt);
int64       exit(int64);
int64       yield(void);
uint64      get_time();
uint64      exec(char *);
uint64      fork(void);
uint64      wait(int pid, int *code);
#endif /* user.h */