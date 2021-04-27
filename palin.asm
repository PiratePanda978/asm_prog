data segment
msg db "Enter the string : $"
block1 db 100 dup ("$")
len db ?
msg1 db 13,10,13,10, "It is a Palindrome$"
msg2 db 13,10,13,10, "It is not a Palindrome$"
data ends

print macro msg
mov ah,9
lea dx,msg
int 21h
mov ah,4ch
int 21h
endm

extra segment
block2 db 09 dup (?)
extra ends

code segment
assume cs:code, ds:data, es:extra
start:
mov ax, data
mov ds, ax
mov ax, extra
mov es, ax
lea dx,msg
mov ah,9
int 21h
lea dx,block1
mov ah,0AH
int 21h
mov bl, block1+1
;add bl,30h
mov len,bl
dec bl
lea si,block1+2
lea di,block2
mov cl,bl

l:
inc di
loop l
mov cl,len

back:
cld
lodsb
std
stosb
loop back
lea si,block1+2
lea di,block2
cld
mov cl,len
repz cmpsb
jnz skip
print msg1
jmp endl

skip:
print msg2

endl:
code ends
end start