inp $00 ; Store input at ZeroPage
inp $02 ; Store input 2 at ZeroPage +2

lda $00 ; Load ZeroPage into Accumulator 
sta $10 ; Store A into $10

lda $01 ; Load ZeroPage +1 into Accumulator 
sta $11 ; Store A into $11

lda $02 ; Load ZeroPage +2 into Accumulator 
sta $12 ; Store A into $12

lda $03 ; Load ZeroPage +3 into Accumulator 
sta $13 ; Store A into $13

clc     ; Clear Carry

lda $10 ; Load $10 into A
adc $12 ; Add with carry
sta $90 ; Store A into $90

lda $11 ; Load $11 into A
adc $13 ; Add with carry
sta $91 ; Store A into $91

prn $90 ; Print $90 and $91