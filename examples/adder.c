#include <stdio.h>

int main() {
        int a, b, r;

        printf("Enter a number: ");
        scanf("%d", &a);
        printf("Enter another number: ");
        scanf("%d", &b);
    
        r = a + b;
        printf("The result is: %d\n", r);
        return 0;
}

// Build and run:
//   cl65 -t sim65c02 -o adder.prg adder.c
//   sim65 adder.prg

// Build and run, separate steps:
//   cc65 -t sim65c02 -o adder.s adder.c
//   ca65 -t sim65c02 -o adder.o adder.s
//   ld65 -t sim65c02 -o adder.prg adder.o sim6502.lib
//   sim65 adder.prg