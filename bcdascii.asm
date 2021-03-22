.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax
mov al,57h
mov ah,al
and al,0fh
mov cl,4h
ror ah,cl
and ah,0fh
add ax,3030h
hlt
main endp
end main