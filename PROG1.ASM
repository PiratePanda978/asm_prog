data segment
data ends
code segment
assume cs:code,ds:data
start:
;ascii implementation
mov dl,97 ;ascii code for small a
mov ah,2
int 21h
mov ah,4ch
int 21h
code ends
end start