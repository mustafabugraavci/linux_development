# Define the cross-compiler
CC = arm-none-eabi-gcc
AS = arm-none-eabi-as
LD = arm-none-eabi-ld

# Source files directory
SRC_C = $(wildcard src/*.c)
SRC_ASM = $(wildcard src/*.s)

# Output directory
BUILD_DIR = output


# Object files derived from source files
OBJ_C = $(SRC_C:.c=.o)
OBJ_ASM = $(SRC_ASM:.s=.o)
OBJ = $(OBJ_C) $(OBJ_ASM)

# Name of the final executable
TARGET = $(BUILD_DIR)/my_arm_program.elf

# Compiler flags
CFLAGS = -mthumb -mtune=arm1176jzf-s -march=armv6+fp -mfpu=auto -mfloat-abi=softfp
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Wpointer-arith
CFLAGS += -Wcast-align
CFLAGS += -Wwrite-strings
CFLAGS += -Wswitch-default
CFLAGS += -Wunreachable-code
CFLAGS += -Winit-self
CFLAGS += -Wmissing-field-initializers
CFLAGS += -Wno-unknown-pragmas
CFLAGS += -Wundef


# Build rule
all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) -T linker_script.ld -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.s
	$(AS) -o $@ $<

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
