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
        .byte	$54,$68,$65,$20,$72,$65,$73,$75,$6C,$74,$20,$69,$73,$3A,$20,$25
	.byte	$64,$0A,$00

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
