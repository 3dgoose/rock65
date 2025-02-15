CC = /usr/bin/cc65
CA = /usr/bin/ca65
CL = /usr/bin/cl65

all:
	$(CC) main.c 
	$(CA) main.s
	$(CL) main.o

asm:
	$(CC) main.c 

clean:
	rm -f *.o
	rm -f *.s
	rm -f main
