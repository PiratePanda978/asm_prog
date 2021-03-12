;data segment
;a dw 0202
;b dw 0408
;data ends
 
code segment
assume cs:code;,ds:data
start:
;mov ax,data
;mov ds,ax
mov ax,0202
mov bx,0408
add ax,bx
hlt
code ends
end start
