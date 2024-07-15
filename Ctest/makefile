# 指定编译器
CC = gcc

# 指定编译选项
CFLAGS = -Wall -Wextra -g

# 目标文件名
TARGET = code

# 源文件
SRCS = code.c

# 生成的可执行文件
OBJS = $(SRCS:.c=.o)

# 默认目标
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# 编译源文件
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# 运行可执行文件
run: $(TARGET)
	./$(TARGET)

# 使用 gdb 调试
debug: $(TARGET)
	gdb $(TARGET)

# 清理生成的文件
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean run debug