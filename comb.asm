DATA SEGMENT
NUM DB 2
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
LEA SI,NUM
MOV CX,06H
MOV AX,01H
MOV BX,AX
L1:
INC BX
MUL BX
CMP BX,CX
JNZ L1
SUB CX,[SI]
MOV BX,0H
INC SI
MOV [SI],AX
MOV AX,01H
L2:
INC BX
MUL BX
CMP BX,CX
JNZ L2
MOV BX,AX
MOV AX,[SI]
DIV BX
MOV BX,00H
INC SI
MOV [SI],AX
MOV AX,01H
DEC SI
DEC SI
MOV CX,[SI]
MOV CH,00H
L3:
INC BX
MUL BX
CMP BX,CX
JNZ L3
INC SI
INC SI
MOV BX,AX
MOV AX,[SI]
DIV BX
HLT
CODE ENDS
END START
