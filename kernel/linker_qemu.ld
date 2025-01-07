OUTPUT_ARCH(riscv)
ENTRY(_start)
BASE_ADDRESS = 0x80200000;

SECTIONS
{
    . = BASE_ADDRESS;
    kernel_start = .;

    text_start = .;
    .text : {
        *(.text.entry)
        *(.text .text.*)
    }

    . = ALIGN(4k);
    text_end = .;
    rodata_start = .;
    .rodata : {
        *(.rodata .rodata.*)
        *(.srodata .srodata.*)
    }

    . = ALIGN(4k);
    rodata_end = .;
    data_start = .;
    .data : {
        *(.data .data.*)
        *(.sdata .sdata.*)
    }

    . = ALIGN(4k);
    data_end = .;
    .bss : {
        *(.bss.stack)
        bss_start = .;
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    }

    . = ALIGN(4k);
    bss_end = .;
    kernel_end = .;

    /DISCARD/ : {
        *(.eh_frame)
    }
}