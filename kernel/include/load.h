#ifndef __LOAD_H__
#define __LOAD_H__

#define APP_BASE_ADDRESS    0x80200000
#define APP_MAX_SIZE        0x20000
#define KERNEL_STACK_SIZE   4096
#define USER_STACK_SIZE     4096

#define APP_BASE_ADDRESS_VA 0x80200000

// load.c
void                    load_init(void);
int                     get_id_by_name(char *name);
int                     load_app_pgtbl(uint64 start, uint64 end, struct Proc *p);
int                     loader(int app_id, struct Proc *p);
int                     load_init_app(void);


#endif