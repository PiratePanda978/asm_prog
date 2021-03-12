data segment
array db 7h,9h,34h,45h,66h
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,array
mov cl,[si]

mov ch,00
mov al,00

label1:
mov bl,[si]
test bl,01
jz label2
add al,bl

label2:
inc si
loop label1

mov ds:[2000h],al

hlt
code ends
end start
