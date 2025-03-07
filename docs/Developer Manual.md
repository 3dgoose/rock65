## Developer Manual
This developer manual includes code examples, hardware details, and guidelines to your contribution to the project.

### Hardware
This breadboard computer features three blue LEDs: one system On/Off indicator and two for the programmer's use. It also includes five buttons, one for debugger, a 168x64 character LCD screen and a Real-Time Clock module.

### Examples
1. The classic Hello World in C:
```c
#include <stdio.h>

int main(void) {
        printf("Hello!\n");
        return 5;
}

// Build and run:
//   cl65 -t sim65c02 -o hello.prg hello.c
//   sim65 hello.prg
```

2. A simple adder (from scratch) that prints the output :
```assembly
; Header

.setcpu     "65C02"
.smart      on
.autoimport on
.debuginfo  off
.import     _printf
.import     pushax  ; Import the pushax subroutine
.export     _main

.segment    "RODATA"

msg:
        .byte	$54,$68,$65,$20,$72,$65,$73,$75,$6C,$74,$20,$69,$73,$3A,$20,$25 ; The result is : %
	.byte	$64,$0A,$00                                                     ; d

.segment    "CODE"

.proc   _main: near

        lda #32
        sta num1
        lda #32
        sta num2

        ; Perform the addition
        lda num1
        clc
        adc num2
        sta resn
    
        ; Print
        lda #<(msg)
        ldx #>(msg)
        jsr pushax
        ldx #$00
	lda resn
	jsr pushax
	ldy #$04
	jsr _printf

        ; End of program
        rts     

.endproc

.segment "BSS"

num1:  .res 1 ; Reserve a byte for the first number
num2:  .res 1
resn:  .res 1

; Build and run:
; cl65 -t sim65c02 -o adder.prg adder.asm
; sim65 adder.prg
; Expected output:
; The result is: 64
```

Refer to [Assembly VS C](/examples/Assembly%20VS%20C/) for a comparison between a simple adder implemented in C and its assembly compiler output.

### Software development
The following sections will describe software development on this platform.

#### Preferred language
The recommended programming language for the 65b02 is Assembly, given its execution speed and compact binary size. However, an external C API is also available, providing functions to control the LCD, read from the SD card and interface with the RTC. This API is cross-language and can be used with both C and Assembly.

#### Debugging
If the fifth button is pressed, the system will launch the built-in debugger `dbg65`. This debugger is a Hex editor that allows direct memory modification, dump viewing and supports basic breakpoints.

#### Environment
The environment is a collection of three tools: the [cc65 toolchain](https://cc65.github.io), an editor of your choice, and an optional make utility.

cc65 includes the compiler (cc65), assembler (ca65), linker (ld65) and simulator (sim65).

Any editor can be used, from `vim` to Eclipse. I use [VS Code](https://code.visualstudio.com) with the [Alchemy65](https://marketplace.visualstudio.com/items?itemName=alchemic-raker.alchemy65).

The GNU Make utility is also used but optional to compile the project.