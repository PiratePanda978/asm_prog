.model small
.stack 100h
.data
.code

main proc

mov ah,2	;isr for output
mov dl,49	;dl=1(decimal)
mov cl,5	;cl=5(for counting the number of iterations)

start:
int 21h
inc dl		;dl++

mov bl,dl	;temporary variable to store dl value

;line break
mov dl,10	;newline character
int 21h
mov dl,13	;carriage return
int 21h

mov dl,bl	;retrieve dl value for next iteration

loop start	;repeat start label cl times

mov ah,4ch
int 21h

main endp
end main
