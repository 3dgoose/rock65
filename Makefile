# Toolchain
CL = cl65
CC = cc65
AR = ar65

# Architecture
ARCH = sim65c02

# Build all programs
all: hello.prg adder.prg

# Build firmware
# firmware:
# 	$(CL) -t $(ARCH) -o lib.prg src/lib.s

# Build example programs
hello.prg: examples/hello.c
	$(CL) -t $(ARCH) -o hello.prg examples/hello.c

adder.prg: examples/adder.asm
	$(CL) -t $(ARCH) -o adder.prg examples/adder.asm

# Clean up generated files
clean:
	rm -f src/*.o *.prg lib.prg
