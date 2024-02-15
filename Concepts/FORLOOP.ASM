.model small
.stack 100h
.data
var1 db 'Hello : $'
count db '1'
.code
main proc
mov ax,@data
mov ds,ax
mov cx,5
lab1:
mov dx, offset var1
mov ah,9
int 21h
mov ah,2
mov dl,count
int 21h
add count,1
mov ah,2
mov dl,13
int 21h
mov dl,10
int 21h
loop lab1
mov ah,4ch
int 21h
main endp
end main

