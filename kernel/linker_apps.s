    .align 4
    .section .data
    .global _app_num
_app_num:
    .quad 3

    .quad app_0_start
    .quad app_1_start
    .quad app_2_start
    .quad app_2_end

    .global _app_names
_app_names:
    .string "app0"
    .string "app1"
    .string "app2"
    .string "usershell"
    
    .global INIT_PROC
INIT_PROC:
    .string "usershell"


    .section .data.app0
    .global app_0_start
app_0_start:
    .incbin "../target/app_00.bin"

    .section .data.app1
    .global app_1_start
app_1_start:
    .incbin "../target/app_01.bin"

    .section .data.app2
    .global app_2_start
    .global app_2_end
app_2_start:
    .incbin "../target/app_02.bin"

app_2_end:
