code segment
assume cs:code
start:
mov al,B0h
out 84h,al
mov al,10h
out 82h,al
mov al,27h
out 82h,al
mov ah,4ch
int 21h
code ends
end start