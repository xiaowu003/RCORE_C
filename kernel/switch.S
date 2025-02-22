.altmacro
.macro SAVE_SN n
    sd s\n, (\n + 2)*8(a0)
.endm
.macro LOAD_SN n
    ld s\n, (\n + 2)*8(a1)
.endm

    .section .text
    .global __switch

__switch:
    # a0->old_context, a1->new_context
    # [阶段1]
    # __switch(
    #    old_context, new_context
    # )
    
    # [阶段2]
    # save ra & s0~s11 of current execution
    sd ra, 0*8(a0)
    
    # save kernel stack of current execution
    sd sp, 1*8(a0)
    
    .set n, 0
    .rept 12
        SAVE_SN %n
        .set n, n + 1
    .endr

    # [阶段3]
    # restore ra & s0~s11 of next execution
    ld ra, 0*8(a1)
    
    # rstore kernel stack of next task
    ld sp, 1*8(a1)
    
    .set n, 0
    .rept 12
        LOAD_SN %n
        .set n, n + 1
    .endr

    # [阶段4]
    ret
