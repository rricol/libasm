# Name of the static library
LIB_NAME = libasm.a

# Name of the test executable
TEST_NAME = main

# Compiler and assembler
CC = gcc
NASM = nasm

# Compilation flags
CFLAGS = -arch x86_64 -Wall -Wextra -Werror
NASMFLAGS = -f macho64

# Source files
ASM_SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
C_SRC = main.c

# Object files
ASM_OBJ = $(ASM_SRC:.s=.o)
C_OBJ = $(C_SRC:.c=.o)

# All object files
OBJ = $(ASM_OBJ)

# Default rule
all: $(LIB_NAME) $(TEST_NAME)

# Create the static library
$(LIB_NAME): $(OBJ)
	ar rcs $(LIB_NAME) $(OBJ)

# Link the test executable
$(TEST_NAME): $(C_OBJ) $(LIB_NAME)
	$(CC) $(CFLAGS) -o $(TEST_NAME) $(C_OBJ) $(LIB_NAME)

# Compiling C source files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Assembling ASM source files
%.o: %.s
	$(NASM) $(NASMFLAGS) $< -o $@

# Clean object files
clean:
	rm -f $(ASM_OBJ) $(C_OBJ)

# Clean object files and executables
fclean: clean
	rm -f $(LIB_NAME) $(TEST_NAME)

# Rebuild the project
re: fclean all

# Bonus rule
bonus: $(LIB_NAME) $(TEST_NAME)_bonus

# Link bonus executable
$(TEST_NAME)_bonus: $(C_OBJ) $(BONUS_OBJ)
	$(CC) $(CFLAGS) -o $(TEST_NAME)_bonus $(C_OBJ) $(BONUS_OBJ) $(LIB_NAME)