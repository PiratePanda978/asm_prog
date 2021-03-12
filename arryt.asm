.model small
.stack 100h
.data

arr db 49,50,51,52,'$'

.code

main proc

mov ax,@data
mov ds,ax

mov dx,offset arr	;store address of arr in dx

mov ah,9		;isr to print array or string
int 21h

mov ah,4ch
int 21h

main endp
end main



;Note : We moved the address of arr into dx
; register instead of dl because address is always
; 16 bit and dl is only 8 bit
