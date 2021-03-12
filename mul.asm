code segment
assume cs:code
start:
mov ax, 0005
mov bx, 0002
mul bx
hlt
code ends
end start
