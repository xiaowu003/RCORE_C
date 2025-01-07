.altmacro

.macro SAVE_GP n
    sd x\n, \n*8(sp)
.endm

.macro LOAD_GP n
    ld x\n, \n*8(sp)
.endm

    .align 2
    .section .text
    .globl __alltraps
    .globl __restore
    # .global uservec

#uservec:
#    # swap a0 and sscratch, so the a0 is TrapContext
#    csrrw a0, sscratch, a0
#
#    # save the user registers in TrapConstext
#    sd ra, 1*8(a0)
#    sd sp, 2*8(a0)
#    sd gp, 3*8(a0)
#    sd tp, 4*8(a0)
#    sd t0, 5*8(a0)
#    sd t1, 6*8(a0)
#    sd t2, 7*8(a0)
#    sd s0, 8*8(a0)
#    sd s1, 9*8(a0)
#    # sd a0, 10*8(a0)  # we will save a0 later
#    sd a1, 11*8(a0)
#    sd a2, 12*8(a0)
#    sd a3, 13*8(a0)
#    sd a4, 14*8(a0)
#    sd a5, 15*8(a0)
#    sd a6, 16*8(a0)
#    sd a7, 17*8(a0)
#    sd s2, 18*8(a0)    
#    sd s3, 19*8(a0)
#    sd s4, 20*8(a0)
#    sd s5, 21*8(a0)
#    sd s6, 22*8(a0)
#    sd s7, 23*8(a0)
#    sd s8, 24*8(a0)
#    sd s9, 25*8(a0)
#    sd s1, 26*8(a0)
#    sd s1, 27*8(a0)
#    sd t3, 28*8(a0)
#    sd t4, 29*8(a0)
#    sd t5, 30*8(a0)
#    sd t6, 31*8(a0)
#
#    # save the user a0 in TrapConstext
#    csrr t0, sscratch
#    sd t0, 10*8(a0)
#
#    csrr t1, sepc
#    sd t1, 33*8(a0)


__alltraps:
    # atomic instruction, swap the values of registers sp and sscratch
    csrrw sp, sscratch, sp
    # now sp->kernel stack, sscratch->user stack
    
    # allocate a TrapContext on kernel stack
    addi sp, sp, -34*8
    
    # save general-purpose registers
    # save the value of the register x1 in sp + 8bytes
    sd x1, 1*8(sp)
    
    # skip sp(x2), we will save it later
    
    sd x3, 3*8(sp)
    
    # skip tp(x4), application does not use it
    
    # save x5~x31
    .set n, 5
    .rept 27
        SAVE_GP %n
        .set n, n+1
    .endr
    
    # we can use t0/t1/t2 freely, because they were saved on kerenl stack
    csrr t0, sstatus
    csrr t1, sepc
    sd t0, 32*8(sp)
    sd t1, 33*8(sp)
    
    # read user stack from sscratch and save it on the kernel stack
    csrr t2, sscratch
    sd t2, 2*8(sp)
    
    # set input argument of trap_handler(cx: &mut TrapContext)
    mv a0, sp
    call trap_handler

__restore:
    # a0: *TrapConstext in user space(Constant); a1: user space token
    # sp get the TrapConstext from a0
    mv sp, a0
    
    # now sp points to TrapConstext in user space, start restoring based on it
    ld t0, 32*8(sp)
    ld t1, 33*8(sp)
    ld t2, 2*8(sp)
    csrw sscratch, t0
    csrw sepc, t1
    csrw sscratch, t2
    
    #restore general purpose registers except x0/sp/tp
    ld x1, 1*8(sp)
    ld x3, 3*8(sp)
    
    .set n, 5
    .rept 27
        LOAD_GP %n
        .set n, n+1
    .endr
    
    # release TrapContext on kernel stack
    addi sp, sp, 34*8
    
    # now sp->kernel stack, sscratch->user stack
    csrrw sp, sscratch, sp
    
    sret
