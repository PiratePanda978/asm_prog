assume CS:code, DS:DATA
data segment
str1 DB "MICRO"
len1 db ($-str1)
str2 DB "HELLO"
len2 db ($-str2)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov cl,len1
mov ch,len2
int 3h
code ends
end start