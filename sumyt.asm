.model small
.stack 100h
.data
.code

main proc

;first input
mov ah,1
int 21h

mov bl,al

;line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;second input
mov ah,1
int 21h

mov cl,al

;line-break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

add bl,cl	;bl = bl+cl
sub bl,48	;ascii value of digits start from 48

mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
