#include "./include/types.h"
#include "./include/riscv.h"
#include "./include/proc.h"
#include "./include/trap.h"
#include "./include/load.h"
#include "./include/defs.h"


extern char _app_num[], _app_names[], boot_stack_top[], kernel_end[], INIT_PROC[];

uint64* app_info_ptr;
uint64  app_num;
char    names[MAX_APP_NUM][MAX_STR_LEN];


// get user progress's information through pre-defined symbol in 'link_app.s'
void load_init(void) {
    char *s;
    
    app_info_ptr = (uint64 *)_app_num;
    app_num = *app_info_ptr;
    
    app_info_ptr++;
    s = _app_names;
    
    printk("app list:\n");
    for (int i = 0; i < app_num; i++) {
        int len = strlen(s);
        strncpy(names[i], (const char *)s, len);
        s += len + 1;
        printk("%s\n", names[i]);
    }

    printk("[K->load_init] ok\n");
}

int get_id_by_name(char *name) {
    for (int i = 0; i < app_num; ++i) {
        if (strncmp(name, names[i], 100) == 0) {
            return i;
        }
    }

    printk("Cannot find such app %s\n", name);
    return -1;
}


int load_app_pgtbl(uint64 start, uint64 end, struct Proc *p) {
    if (p == NULL || p->state == UNUSED) {
        panic("load app error\n");
    }

    void *page;
    uint64 pa_start = PGROUNDDOWN(start);
    uint64 pa_end = PGROUNDUP(end);
    uint64 length = pa_end - pa_start;
    uint64 va_start = APP_BASE_ADDRESS_VA;
    uint64 va_end = APP_BASE_ADDRESS_VA + length;

    // printk("before for loop\n");

    for (uint64 va = va_start, pa = pa_start; pa < pa_end; 
                                va += PGSIZE, pa += PGSIZE) {
        page = kalloc();
        if (page == 0) {
            panic("load app alloc page error\n");
        }

        // 将原数据移到新的物理页
        memmove(page, (const void *)pa, PGSIZE);
        // printk("memmove ok\n");
        if (pa < start) {
            // 若原pa不是页面对齐的，将pa前的数据置0
            memset(page, 0, start - va);
        } else if (pa + PGSIZE > end) {
            // 原数据不足一页，将后面的数据清0
            memset(page + (end - pa), 0, PGSIZE - (end - pa));
        }

        // printk("before page map\n");
        if (mappages(p->pagetable, va, PGSIZE, (uint64)page,
            PTE_U | PTE_R | PTE_W | PTE_X) != 0) {
            
            panic("laod app map error\n");
        }
        // printk("after page map\n");
    }

    // printk("map ustack\n");
    // map ustack
    p->ustack = va_end + PGSIZE;
    for (uint64 va = p->ustack; va < p->ustack + USER_STACK_SIZE;
         va += PGSIZE) {
        page = kalloc();
        if (page == 0) {
            panic("load app alloc ustack error\n");
        }
        memset(page, 0, PGSIZE);

        if (mappages(p->pagetable, va, PGSIZE, (uint64)page,
            PTE_U | PTE_R | PTE_W) != 0) {
            panic("load app map ustack error\n");
        }
    }

    // printk("before trapframe\n");
    p->trapframe->regs.sp = p->ustack + USER_STACK_SIZE;
    p->trapframe->sepc = va_start;
    p->max_page = PGROUNDUP(p->ustack + USER_STACK_SIZE - 1) / PGSIZE;
    // printk("p->max_page = %d\n", p->max_page);
    p->state = RUNNABLE;
    // printk("load app ok\n");
    return 0;
}

int loader(int app_id, struct Proc *p) {
    return load_app_pgtbl(app_info_ptr[app_id], app_info_ptr[app_id + 1], p);
}

int load_init_app(void) {
    int id = get_id_by_name("app0");
    if (id < 0) {
        printk("Cannot find INIT PROC %s", INIT_PROC);
        panic("");
    }

    struct Proc *p = allocate_proc();
    if (p == NULL) {
        panic("load init app allocproc error\n");
    }

    // printk("load init proc %d\n", id);

    loader(id, p);

    add_task(p);
    // printk("load_init_app ok\n");
    return 0;
}