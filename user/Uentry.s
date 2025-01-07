    .section .text.entry
    .global _entry
_entry:
    la sp, boot_stack_top
    j lib_main

# bss段内存
    .section .bss.stack
    .global boot_stack
boot_stack:
    .space 4096 * 16
    .global boot_stack_top
boot_stack_top:

loop:
    j loop
