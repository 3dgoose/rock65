# Toolschain
CL = cl65
SIM = sim65 

# Architecture
ARCH = "sim65c02"

all:
        $(CL) -t $(ARCH) -o firmware.prg src/bootloader.s
        
run:
	$(CL) -t $(ARCH) -o firmware.prg boot.c add.s
	$(SIM) firmware.prg

clean:
        rm -f *.o *.prg