ORG 0100H
MOV A, #07FH
Start: JB P0.0, LoopL

LoopR: RR A
       MOV P1, A
       LCALL TIME
       SJMP Start

LoopL: RL A
       MOV P1, A
       LCALL TIME
       SJMP Start

TIME: MOV R1, #0FAH
L1: MOV R0, #0FFH
W1: DJNZ R0, W1
    DJNZ R1, L1
    NOP
    NOP
    RET

END