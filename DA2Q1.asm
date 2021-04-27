.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax
mov al,53   ;Moving ASCII value of '5' in DL
mov ah,09h
mov cx,1
mov bh,0
mov bl,09h
int 10h
mov ah,4ch
int 21h
main endp
end main