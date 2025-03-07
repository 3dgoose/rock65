# Toolchain
CL = cl65
CC = cc65
AR = ar65

# Architecture
ARCH = sim65c02

# Build all programs
all: hello.prg adder.prg # firmware

# Build firmware
# firmware: src/boot.s lib65b02.a
# 	$(CL) -t $(ARCH) -o firmware.prg src/boot.s lib65b02.a

# Build example programs
hello.prg: examples/hello.c
	$(CL) -t $(ARCH) -o hello.prg examples/hello.c lib65b02.a

adder.prg: examples/adder.asm
	$(CL) -t $(ARCH) -o adder.prg examples/adder.asm

# Create the static library
lib65b02.a: src/lib.o
	$(AR) r lib65b02.a src/lib.o

# Compile lib.c to an object file
src/lib.o: src/lib.c
	$(CL) -t $(ARCH) -c -o src/lib.o src/lib.c

# Target to build both the object file and the library
lib: src/lib.o lib65b02.a

# Clean up generated files
clean:
	rm -f src/*.o *.prg lib65b02.a
