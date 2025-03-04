# Toolchain
CL = cl65
SIM = sim65 

# Architecture
ARCH = "sim65c02"

all:
        $(CL) -t $(ARCH) -o firmware.prg src/boot.s src/lib.c

clean:
        rm -f *.o *.prg

# To run any program using sim65 : sim65 ./file.prg
