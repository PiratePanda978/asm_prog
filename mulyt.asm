.model small
.stack 100h
.data
.code
main proc

;1st input (stored in bl)
mov ah,2
int 21h
sub al,48
mov bl,al

;2nd input (stored in al)
mov ah,2
int 21h
sub al,48

mul bl	;ax=al*bl
aam	;ascii adjust after multiplication (ax-->ah,al)

mov ch,ah
add ch,48
mov cl,al
add cl,48


mov ah,4ch
int 21h
main endp
end main
