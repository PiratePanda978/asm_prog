.model small
.stack 100h
.data
bcd dw 27h
.code
main proc
mov ax,@data
mov ds,ax
mov ax,bcd
and ax,0fh
mov bx,ax
mov ax,bcd
and ax,0f0h
mov cl,04h
ror al,cl
mov cx,0ah
mul cx
add ax,bx
hlt
main endp
end main