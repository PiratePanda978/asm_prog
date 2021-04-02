data segment
str db 10 dup ('$')
msg db 'Enter string and press enter : $'
msg2 db 'Length is $'
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea dx,msg
mov ah,9
int 21h
xor cx,cx
lea si,str
mov ah,1
loop1:
int 21h
cmp al,13
je outt
mov [si],al
inc si
inc cl
jmp loop1
outt:
lea dx,msg2
mov ah,9
int 21h
mov ah,2
mov dl,cl
add dl,48
int 21h
lea si,str

mov ah,4ch
int 21h
code ends
end start
