DATA SEGMENT
ARR DB 7h,9h,34h,45h,66h
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:

MOV AX,DATA
MOV DS,AX

LEA SI,ARR
MOV CL,[SI]
MOV CH,00
MOV AL,[SI]

L1:
CMP AL,[SI]
JC SKIP
MOV AL,[SI]

SKIP:
INC SI
LOOP L1
MOV DS:[600],AL
HLT

CODE ENDS
END START
