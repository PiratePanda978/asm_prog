.model small
.stack 100h
.data
msg db "Microprocessor and Interfacing-CSE2006-D2"
file1 db "test1.txt",0
msg_size = $ - offset msg
handle dw ?
.code
main proc
mov ax,@data
mov ds,ax
;create file
mov ah,3ch
mov cx,0
mov dx,offset file1
int 21h
mov handle,ax
;write to file
mov ah,40h
mov bx,handle
mov dx,offset msg
mov cx,msg_size
int 21h
;close file
mov ah,3eh
mov bx,handle
int 21h
mov ah,4ch
int 21h
main endp
end main