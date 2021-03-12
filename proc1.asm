;program to print A-Z
.model small
.stack 100h
.data

.code

main proc
mov ah,2
mov cl,26
mov dl,65
lable1:
int 21h
call linebr
inc dl
loop lable1

mov ah,4ch
int 21h
main endp


;procedure for line break
linebr proc
push ax	;the stack has been used to retain the original values of ah,dl after calling procedure
push dx
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
pop dx		;Values retained
pop ax
ret
linebr endp

end main
