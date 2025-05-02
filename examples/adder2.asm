inp $00 ; Store input at ZeroPage
inp $02 ; Store second input at ZeroPage +2
lda $00 ; Load ZeroPage into A

clc     ; Clear Carry
adc $01 ; Add with Carry ZeroPage +1
clc     ; Clear Carry
adc $02 ; Add with Carry ZeroPage +2
clc     ; Clear Carry
adc $03 ; Add with Carry ZeroPage +3
sta $90 ; Store A in $90
prn $90 ; Print $90