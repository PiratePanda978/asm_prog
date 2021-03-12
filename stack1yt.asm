;reverse a string using stack
.model small
.stack 100h
.data

.code
main proc

mov cl,5

;take input
lable1:
mov ah,1	;isr for character input
int 21h
mov ah,0	;ax = ah+al (but ah = 1, which is wrong)
push ax	;we can only push full 16 bits into stack (Hence, ax not al)
loop lable1

;line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov cl,5

;output
lable2:
pop dx
mov ah,2
int 21h
loop lable2

mov ah,4ch
int 21h

main endp
end main
