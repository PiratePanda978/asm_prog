data segment
data ends
code segment
assume cs:code,ds:data
start:
;take input
mov ah,1
int 21h
;show output
mov dl,al
mov ah,2
int 21h
mov ah,4ch
int 21h
code ends
end start