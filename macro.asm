print macro var
push ax
push dx

lea dx,var
mov ah,9
int 21h
call newline

pop dx
pop ax
endm

.model small
.stack 100h
.data
v1 db 'Hello$'
.code
main proc

mov ax,@data
mov ds,ax

print v1

mov ah,4ch
int 21h
main endp

newline proc
push ax
push dx

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

pop dx
pop ax
ret
newline endp

end main
