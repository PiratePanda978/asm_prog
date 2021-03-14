code segment
start:
assume cs:code
mov ax, 1041
mov bx, 0309
add ax,bx
hlt
code ends
end start