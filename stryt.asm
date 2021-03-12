;program to take string input from user
.model small
.stack 100h
.data

msg1 db 'Give length of string : $'
msg2 db 'Input : $'
msg3 db 'Output : $'
str db 10 dup ('$')

.code

main proc

mov ax,@data
mov d s,ax

;take length of string as input (al)
;print message
mov ah,9
lea dx,msg1
int 21h

;take input
mov ah,1
int 21h
sub al,48	;to convert ascii to number (for number of iterations)
mov cl,al	;count register = no of iterations

;line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;print message
mov ah,9
lea dx,msg2
int 21h

;take input
mov ah,1
lea si,str	;load starting address of str into SI

loop1:
int 21h
mov [si],al	;move value in AL to mem-loca pointed by SI
inc si
loop loop1

;line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;print message
mov ah,9
lea dx,msg3
int 21h

;give output
lea dx,str
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
