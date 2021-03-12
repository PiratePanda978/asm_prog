data segment
array db 0010h,0056h,0076h,0033h,0045h
data ends

code segment
assume cs:code,ds:data
start:	mov ax,data
	mov ds,ax
	
	mov ch,04h
	
up2:	mov cl,04h
	lea si,array

up1:	mov al,[si]
	mov bl,[si+1]
	cmp al,bl
	jc down
	mov dl,[si+1]
	xchg [si],dl
	mov [si+1],dl
	
down:	inc si
	dec cl
	jnz up1
	dec ch
	jnz up2

	int 3
	code ends
	end start
