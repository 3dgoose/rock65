## Developer Manual

This developer manual includes game concepts, code examples, programmable hardware details, and comprehensive guidelines to facilitate your contribution to the project.

### Programmable Hardware

This breadboard computer features three blue LEDs: one as a system On/Off indicator and two for the programmer's use. It also includes four buttons, a 16x2 character LCD screen, and a Real-Time Clock module.

### Cons

The system has several drawbacks. Firstly, any LCD screen is slow compared to older technology like Vacuum Fluorescent Displays. Additionally, the SD card uses the SPI protocol, which is slow, resulting in high boot times.


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

2. A simple adder that prints the output :
```assembly
; Header

.setcpu     "65C02"
.smart      on
.autoimport on
.debuginfo  off
.import     _printf
.import     pushax
.export     _main

.segment    "RODATA"

msg:
        .byte	$54,$68,$65,$20,$72,$65,$73,$75,$6C,$74,$20,$69,$73,$3A,$20,$25 ; The result is: %
	.byte	$64,$0A,$00                                                     ; d 

.segment    "CODE"

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
