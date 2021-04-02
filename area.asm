data segment
org 1000h
side dd 5.0233
squarea dd 01 dup(?)
data ends

code segment
assume cs:code, ds:data
.8087
start:
mov ax, data
mov ds, ax
finit
fld side
fst st(4)
fmul st(0), st(4)
fst squarea
hlt
code ends
end start
end