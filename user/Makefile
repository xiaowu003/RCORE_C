CROSS_PREFIX = riscv64-unknown-elf-
CC = ${CROSS_PREFIX}gcc
AS = ${CROSS_PREFIX}as

CFLAGS += -mcmodel=medany

OBJCOPY = riscv64-unknown-elf-objcopy
OBJDUMP = riscv64-unknown-elf-objdump

INC_DIR = ./include/
APP_NUM = 00
SRC_LINKER = ./linker/${APP_NUM}t_linker.ld
# SRC_LINKER = ./linker_app.ld

BASE_ADDRESS = 0x80200000

TARGET_NAME = ../target/app_${APP_NUM}
TARGET_ELF = ${TARGET_NAME}.elf
TARGET_BIN = ${TARGET_NAME}.bin

SBI_BIN = ../kernel/rustsbi-qemu.bin

SRC_FILES = ./Uentry.s			\
			./main.c			\
			./app/${APP_NUM}t.c	\
			./syscall.c

build :
	${CC} -g ${SRC_FILES} -o ${TARGET_ELF}	\
		-T${SRC_LINKER}	\
		-I${INC_DIR}	\
		-nostdinc -nostdlib ${CFLAGS} 
	@${OBJCOPY} --strip-all ${TARGET_ELF} -O binary ${TARGET_BIN}

run : build
	qemu-system-riscv64 -machine virt -nographic -bios $(SBI_BIN) -device loader,file=${TARGET_BIN},addr=${BASE_ADDRESS}

rung: build
	qemu-system-riscv64 -machine virt -nographic -bios $(SBI_BIN) -device loader,file=${TARGET_BIN},addr=${BASE_ADDRESS} -s -S

clean :
	rm ../target/app_00.*

.PHONY : build clean run rung
	
