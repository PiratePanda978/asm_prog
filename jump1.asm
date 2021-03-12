.model small
.stack 100h
.data
msg2 db 'Input : $'
msg3 db 'Output : $'
str db 100 dup ('$')
.code
main proc

mov ax,@data
mov ds,ax

mov ah,9
lea dx,msg2
int 21h

lea si,str

mov ah,1
lable1:
int 21h
cmp al,13
je outt
mov [si],al
inc si
jmp lable1

outt:
lea dx,msg3
mov ah,9
int 21h
lea dx,str
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
