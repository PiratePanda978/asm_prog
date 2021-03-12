code segment
start:
assume cs:code
mov ax, 0005
mov bx, 0003
sub ax, bx
hlt
code ends
end start
