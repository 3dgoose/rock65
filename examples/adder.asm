.import _printf
.import pushax
.export _main

.segment "RODATA"
msg:
    .byte "The result is: %d", 10, 0

.segment "BSS"
res: .res 2

.segment "CODE"
.proc _main: near

    ; Load n1 (270) into A
    lda #<270
    sta res      ; LSB
    lda #>270
    sta res+1    ; MSB

    ; Add n2 (30)
    clc
    lda res
    adc #<30
    sta res
    lda res+1
    adc #>30
    sta res+1

    ; Print the result
    lda #<msg
    ldx #>msg
    jsr pushax

    lda res
    ldx res+1
    jsr pushax

    ldy #$04
    jsr _printf

    rts
.endproc

