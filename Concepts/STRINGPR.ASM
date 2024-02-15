.model small
.stack 100h
.data
var1 db 'A'
var2 db ?
var3 db 'Enter a Character :  $'
var4 db 'chnaged in uppercase $'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset var3
mov ah,9
int 21h
mov ah,1
int 21h
mov var2,al
sub var2,32
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
lea dx,var4
mov ah,9
int 21h
mov dl,var2
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main


