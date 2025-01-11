CROSS_PREFIX = riscv64-unknown-elf-
CC = ${CROSS_PREFIX}gcc
AS = ${CROSS_PREFIX}as
GDB = ${CROSS_PREFIX}gdb

OBJCOPY = ${CROSS_PREFIX}objcopy
OBJDUMP = ${CROSS_PREFIX}objdump

BASE_ADDRESS = 0x80200000

CFLAGS += -mcmodel=medany

INC_DIR = ./include

SRC_FILES = ./start.s		\
			./main.c 		\
			./sbi.c			\
			./printk.c

SRC_LINKER = ./linker_qemu.ld

TARGET_NAME = ../target/os
TARGET_ELF = ${TARGET_NAME}.elf
TARGET_BIN = ${TARGET_NAME}.bin

SBI_BIN = ./rustsbi-qemu.bin

# 相关文件夹名称
TARGET_DIR_NAME := ../target
ifeq ($(wildcard $(TARGET_DIR_NAME)), )
creat_folder:
	@echo "Creating ${TARGET_DIR_NAME} folder"
	@mkdir -p ${TARGET_DIR_NAME}
else
creat_folder:
	@echo "${TARGET_DIR_NAME} folder already exists"
endif

folder: creat_folder

build : folder
	$(CC) $(SRC_FILES) -o $(TARGET_ELF) -T$(SRC_LINKER) -I$(INC_DIR) -nostdinc -nostdlib $(CFLAGS) -g

objcopy : build
	@${OBJCOPY} --strip-all ${TARGET_ELF} -O binary ${TARGET_BIN}

run : objcopy
	qemu-system-riscv64 -machine virt -nographic -bios $(SBI_BIN) -device loader,file=${TARGET_BIN},addr=${BASE_ADDRESS}

rung: objcopy
	qemu-system-riscv64 -machine virt -nographic -bios $(SBI_BIN) -device loader,file=${TARGET_BIN},addr=${BASE_ADDRESS} -s -S

gdb : 
	${GDB} -ex 'file ${TARGET_ELF}' -ex 'set arch riscv:rv64' -ex 'target remote localhost:1234'

debug:

clean:
	rm -rf ../target/os.*

.PHONY : creat_folder folder build objcopy run rung gdb debug clean
