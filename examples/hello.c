#include <stdio.h>

int main() {
        printf("Hello!\n");
        return 5;
}

// Build and run:
//   cl65 -t sim65c02 -o hello.prg hello.c
//   sim65 hello.prg

// Build and run, separate steps:
//   cc65 -t sim65c02 -o hello.s hello.c
//   ca65 -t sim65c02 -o hello.o hello.s
//   ld65 -t sim65c02 -o hello.prg hello.o sim6502.lib
//   sim65 hello.prg