ORG 0000H
AJMP MAIN
ORG 0003H
AJMP INSER
ORG 0030H
MOV SP, #60H
MAIN: SETB EX0
      SETB IT0
      SETB EA
HERE: SJMP HERE
ORG 0200H
INSER: MOV A, #0F0H
       MOV P1, A
       MOV A, P1
       SWAP A
       MOV P1, A
       RETI
END