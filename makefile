# 默认目标
all: help

# 进入Ctest目录并运行其Makefile中的指定目标
c:
	$(MAKE) -C Ctest

# 进入CPPtest目录并运行其Makefile中的指定目标
cpp:
	$(MAKE) -C CPPtest

# 运行C代码
run_c:
	$(MAKE) -C Ctest run

# 运行C++代码
run_cpp:
	$(MAKE) -C CPPtest run

# 使用 gdb 调试C代码
debug_c:
	$(MAKE) -C Ctest gdb

# 使用 gdb 调试C++代码
debug_cpp:
	$(MAKE) -C CPPtest gdb

# 清理Ctest目录中的生成文件
clean_c:
	$(MAKE) -C Ctest clean

# 清理CPPtest目录中的生成文件
clean_cpp:
	$(MAKE) -C CPPtest clean

# 清理所有生成文件
clean: clean_c clean_cpp

# 帮助信息
help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  c         - Compile C code in Ctest folder"
	@echo "  cpp       - Compile C++ code in CPPtest folder"
	@echo "  run_c     - Compile and run C code"
	@echo "  run_cpp   - Compile and run C++ code"
	@echo "  debug_c   - Compile and debug C code with gdb"
	@echo "  debug_cpp - Compile and debug C++ code with gdb"
	@echo "  clean_c   - Clean generated files in Ctest folder"
	@echo "  clean_cpp - Clean generated files in CPPtest folder"
	@echo "  clean     - Clean all generated files"

.PHONY: all c cpp run_c run_cpp debug_c debug_cpp clean_c clean_cpp clean help
