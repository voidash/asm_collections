;Six bytes of data are stored in memory locations starting at address 2050H. Write 8085 assembly
;language codes to add all the data bytes. Use register B to save any carries generated, while
;adding the data bytes. Store the entire sum (with carries) at two consecutive memory locations,
;2070H and 2071H

; load data 
LXI B, 2050H
MVI A, 5H

start: STAX B
INX B
DCR A
JNZ start


; main program
LXI D, 2050H
MVI B, 06H

ADDS: LDAX D
INX D
MOV C, A
LDAX D
INX D
ADD C
STA 2070H
JNC NOCARRY
LDA 2071H
ADI 1H
STA 2061H
NOCARRY:DCR B
MOV A, B
JNZ ADDS
