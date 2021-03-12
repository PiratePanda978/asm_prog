code segment
assume cs:code
start:
mov ax, 0020
mov bx, 0005
div bx
hlt
code ends
end start
