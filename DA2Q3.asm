.model small
.stack 100h
.data
file1 db "TEST3.TXT",0
file2 db "anupam.txt",0
ok db "File Renamed $"
notok db "File not renamed $"
handle dw ?
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax

;create file
mov ah,3ch
mov cx,0
mov dx,offset file1
int 21h
mov handle,ax

;close file
mov ah, 3eh
mov bx, handle
int 21h

;rename file
mov ah,56h
mov dx,offset(file1)
mov di,offset(file2)
int 21h
jc error
mov dx,offset ok
mov ah,09
int 21h
jmp over

error:
mov dx,offset notok
mov ah,09
int 21h

over:
mov ah,4ch
int 21h
main endp
end main