#ifndef VIRTUAL_MEMORY__
#define VIRTUAL_MEMORY__

// virtual_memory.c
int                     mappages(pagetable_t, uint64, uint64, uint64, int);
void                    kvmmap(pagetable_t, uint64, uint64, uint64, int);
pagetable_t             kvmmake(void);
void                    kvm_init(void);
void                    uvmunmap(pagetable_t, uint64, uint64, int);
pagetable_t             uvmcreate(uint64 trapframe);
void                    uvmfree(pagetable_t pagetable, uint64 max_page);
pte_t*                  walk(pagetable_t, uint64, int);
void                    freewalk(pagetable_t);
uint64                  walk_addr(pagetable_t, uint64);
uint64                  useraddr(pagetable_t, uint64);
int                     uvmcopy(pagetable_t old, pagetable_t new, uint64 max_page);
uint64                  uvmalloc(pagetable_t pagetable, uint64 oldsz, uint64 newsz, int xperm);
uint64                  uvmdealloc(pagetable_t pagetable, uint64 oldsz, uint64 newsz);
int                     copyout(pagetable_t, uint64, char *, uint64);
int                     copyin(pagetable_t, char *, uint64 , uint64);
int                     copyinstr(pagetable_t pagetable, char *dst, uint64 srcva, uint64 max);
int                     either_copyout(int user_dst, uint64 dst, char *src, uint64 len);
int                     either_copyin(int user_src, uint64 src, char *dst, uint64 len);

#endif