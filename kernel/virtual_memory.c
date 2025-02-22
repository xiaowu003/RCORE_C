#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/defs.h"

extern char text_end[]; // linker_qemu.ld sets this to end of kernel code.
extern char trampoline[];
pagetable_t kernle_pagetable;   // 内核页表

// 将从va开始的大小为size的内存，映射至从pa 到 pa + size处；
// 返回0表示成功，返回-1表示失败
int mappages(pagetable_t pagetable, uint64 va, uint64 size, uint64 pa, int perm) {
    uint64 a, last;
    pte_t *pte;

    a = PGROUNDDOWN(va);
    last = PGROUNDDOWN(va + size - 1);

    for (;;) {
        if ((pte = walk(pagetable, a, 1)) == 0) {
            // 创建页表项PTE失败
            printk("creat pte error\n");
            return -1;
        }

        // 重复映射
        if (*pte & PTE_V) {
            printk("remap error\n");
            return -1;
        }

        // 将页表项赋予权限标识
        *pte = PA2PTE(pa) | perm | PTE_V;
        if (a == last) {
            break;
        }

        a += PGSIZE;
        pa += PGSIZE;
    }

    return 0;
}

// 仅用于映射内核虚拟地址到物理地址，并添加到内核页表中
void kvmmap(pagetable_t kpgtbl, uint64 va, uint64 pa, uint64 sz, int perm) {
    if (mappages(kpgtbl, va, sz, pa, perm) != 0) {
        panic("kvmmap");
    }
}

// 分配一个内核页表，采用直接映射的方法将text段映射；
// 将物理地址trampoline映射到页表的最顶端虚拟地址；
// 返回一个页表
pagetable_t kvmmake(void) {
    pagetable_t kpgtbl;
    kpgtbl = (pagetable_t)kalloc();
    memset(kpgtbl, 0, PGSIZE);
    
    // map kernel text executable and read-only.
    kvmmap(kpgtbl, KERNBASE, KERNBASE, 
           (uint64)text_end - KERNBASE, PTE_R | PTE_X);
    
    // map kernel data and the physical RAM we'll make use of.
    // 同时这也直接映射了内核栈
    kvmmap(kpgtbl, (uint64)text_end, (uint64)text_end,
           PHYSTOP - (uint64)text_end, PTE_R | PTE_W);
    kvmmap(kpgtbl, TRAMPOLINE, (uint64)trampoline, PGSIZE, PTE_R | PTE_X);

    return kpgtbl;
}

// 初始化内核页表，启动SV39分页方式，将内核页表写入satp寄存器，并启动分页
void kvm_init(void) {
    kernle_pagetable = kvmmake();
    w_satp(MAKE_SATP(kernle_pagetable));    // 启用SV39分页方法，并将内核页表写入satp寄存器
    sfence_vma();
    printk("[K->kvm_init] enable pageing at 0x%x\n", r_satp());
}

// 解除从va开始的npages页的映射，va必须是页面对齐的，可选是否释放这些物理页
void uvmunmap(pagetable_t pagetable, uint64 va, uint64 npages, int do_free) {
    uint64 a;
    pte_t *pte;

    if ((va % PGSIZE) != 0) {
        panic("uvmunmap: va not aligned\n");
    }

    for (a = va; a < va + npages * PGSIZE; a += PGSIZE) {
        if ((pte = walk(pagetable, a, 0)) == 0) {
            // 说明虚拟地址a没有映射物理页
            continue;
        }

        // 没有PTE_V权限时，表示该页表项指针为空指针，即该页表项对应的虚拟地址范围是无效的
        // 有PTE_V权限，且PTE_R/W/X权限都没有时，表示是一个合法的页表项目录，其包含的指针指向下一级页表
        // 有PTE_V权限，且PTE_R/W/X至少有一项时，表示是一个合法的页表项，其包含了虚拟地址对应的物理页号    
        if ((*pte & PTE_V) != 0) {
            if (PTE_FLAGS(*pte) == PTE_V) {
                panic("uvmunmap: not a leaf\n");
            }

            if (do_free) {
                uint64 pa = PTE2PA(*pte);
                kfree((void *)pa);
            }
        }
    }
}

// 创建一个用户页表，然后将物理地址trampoline映射到页表的最顶端
// 如果失败返回0， 成功则返回用户页表
pagetable_t uvmcreate(void) {
    pagetable_t pagetable;
    pagetable = (pagetable_t)kalloc();
    if (pagetable == 0) {
        printk("uvmcreate: kalloc error\n");
        return 0;
    }
    
    memset(pagetable, 0, PGSIZE);

    if (mappages(pagetable, TRAMPOLINE, PGSIZE, (uint64)trampoline, PTE_R | PTE_X) < 0) {
        kfree(pagetable);
        printk("uvmcreate: mappages error\n");
        return 0;
    }

    return pagetable;
}

void uvmfree(pagetable_t pagetable, uint64 max_page) {
    if (max_page > 0) {
        uvmunmap(pagetable, 0, max_page, 1);
    }
    freewalk(pagetable);
}

// walk 模拟CPU进行MMU的过程，返回一个页表项 pte，
// 若当前页表项无效（即没有完整的三级页表）且alloc为0，则不分配页表，直接返回0
// alloc 不为0，则分配一个新的页表项给va，注意返回的页表项为 全0值。
pte_t* walk(pagetable_t pagetable, uint64 va, int alloc) {
    if (va >= MAXVA) {
        panic("walk");
    }

    for (int level = 2; level > 0; level--) {
        pte_t *pte = &pagetable[PX(level, va)];

        if (*pte & PTE_V) {
            pagetable = (pagetable_t)PTE2PA(*pte);
        } else {
            if (!alloc || (pagetable = (pde_t*)kalloc()) ==  0) {
                printk("pagetable = %x\n", pagetable);
                return 0;
            }
            memset(pagetable, 0, PGSIZE);
            *pte = PA2PTE(pagetable) | PTE_V;
        }
    }

    // 如果va对应的三页表都存在，此时pagetable为最后一级页表的地址，
    // 然后计算页表偏移就能得到最后的页表项，并将其返回
    return &pagetable[PX(0, va)];
}

void freewalk(pagetable_t pagetable) {
    // 有2^9 = 512 PTES在这个页表中
    for (int i = 0; i < 512; i++) {
        pte_t pte = pagetable[i];
        if ((pte & PTE_V) && (pte & (PTE_R | PTE_W | PTE_X) == 0)) {
            // 这个pte指向下一级页表
            uint64 child = PTE2PA(pte);
            freewalk((pagetable_t)child);
            pagetable[i] = 0;
        } else if (pte & PTE_V) {
            panic("freewalk: leaf\n");
        }
    }

    kfree((void *)pagetable);
}

// 仅用于用户页表，返回va对应的pa（物理地址页），此时pa的最后12位为0；
// 若va没有被map，则返回0
uint64 walk_addr(pagetable_t pagetable, uint64 va) {
    pte_t *pte;
    uint64 pa;

    if (va > MAXVA) {
        return 0;
    }

    pte = walk(pagetable, va, 0);
    if (pte == 0) {
        // 说明va没有对应的页表项
        return 0;
    }

    if ((*pte & PTE_V) == 0) {
        // 该页表项不合法
        return 0;
    }
    
    if ((*pte & PTE_U) == 0) {
        // 该页表项 用户态 不能访问
        return 0;
    }

    pa = PTE2PA(*pte);
    return pa;
}

// 用于由用户空间中一个va，得到对应的物理地址pa
// 成功返回该物理地址，失败则返回0
uint64 useraddr(pagetable_t pagetable, uint64 va) {
    uint64 page = walk_addr(pagetable, va);
    if (page == 0) {
        return 0;
    }
    
    // SV39中，va的最后12位是地址偏移量，物理页加上偏移就是该内存的位置
    return page | (va & 0xFFFULL);
}


// 用于从kernel空间复制数据到user空间
// 拷贝len字节的数据到目标地址
// 成功返回0，失败返回-1
int copyout(pagetable_t pagetable, uint64 dstva, char *src, uint64 len) {
    uint64 n, va0, pa0;

    while(len > 0) {
        va0 = PGROUNDDOWN(dstva);
        pa0 = walk_addr(pagetable, va0);
        if (pa0 == 0) {
            return -1;
        }

        n = PGSIZE - (dstva - va0);
        if (n > len) {
            n = len;
        }

        memmove((void*)(pa0 + (dstva - va0)), src, n);

        len -= n;
        src += n;
        dstva = va0 + PGSIZE;
    }

    return 0;
}

// 从user空间拷贝至kernel空间
// 拷贝len字节到目标地址处（可能len字节数据横跨多个内存页，多次拷贝，每次只拷贝同一页内的数据
// 成功返回0，失败返回-1
int copyin(pagetable_t pagetable, char *dst, uint64 srcva, uint64 len) {
    uint64 n, va0, pa0;

    while (len > 0) {
        va0 = PGROUNDDOWN(srcva);
        pa0 = walk_addr(pagetable, va0);
        if (pa0 = 0) {
            return -1;
        }
        n = PGSIZE - (srcva - va0); // 该地址在当前页的偏移量
        if (n > len) {
            n = len;
        }
        memmove(dst, (void *)(pa0 + (srcva - va0)), n);

        len -= n;
        dst += n;
        srcva = va0 + PGSIZE;
    }

    return 0;
}

int copyinstr(pagetable_t pagetable, char *dst, uint64 srcva, uint64 max) {
    uint64 n, va0, pa0;
    int got_null = 0, len = 0;

    while (got_null == 0 && max > 0) {
        va0 = PGROUNDDOWN(srcva);
        pa0 = walk_addr(pagetable, va0);
        if (pa0 == 0) {
            return -1;
        }
        n = PGSIZE - (srcva - va0);
        if (n > max) {
            n = max;
        }

        char *p = (char *)(pa0 + (srcva - va0));

        while (n > 0) {
            if (*p == '\0') {
                *dst = '\0';
                got_null = 1;
                break;
            } else {
                *dst = *p;
            }
            --n;
            --max;;
            p++;
            dst++;
            len++;
        }

        srcva = va0  + PGSIZE;
    }


    return len;
}
