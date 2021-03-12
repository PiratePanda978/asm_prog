.model small
.stack 100h
.data
.code
main proc

mov dl,'1'
mov ah,2

lable1:
int 21h
cmp dl,'9'
je endd
inc dl
jmp lable1

endd:
mov ah,4ch
int 21h

main endp
end main
