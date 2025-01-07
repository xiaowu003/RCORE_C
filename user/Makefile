CROSS_PREFIX = /riscv64-gcc-8.3.0/riscv/bin/riscv64-unknown-elf-
CC = ${CROSS_PREFIX}gcc
AS = ${CROSS_PREFIX}as

CFLAGS += -mcmodel=medany

OBJCOPY = ${CROSS_PREFIX}objcopy
OBJDUMP = ${CROSS_PREFIX}objdump

INC_DIR = ./include/
APP_NUM = 01
SRC_LINKER = ./linker/${APP_NUM}t_linker.ld

TARGET_NAME = ../target/app_${APP_NUM}
TARGET_ELF = ${TARGET_NAME}.elf
TARGET_BIN = ${TARGET_NAME}.bin

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

clean :
	rm ../target/app_00.*

.PHONY : build clean run rung
	
