.model small
.stack 100h
.data
 printvar db 'Printing Updated value: $'
.code
   main proc
   mov ax,@data
   mov ds,ax
   mov bl,'A'
   call updatefun
  ; mov dl,bl
   call printfun

   mov ah,4ch
   int 21h
   main endp

   updatefun proc
   add bl,1
   ret
   updatefun endp


   printfun proc
   lea dx,printvar
   mov ah,9
   int 21h
    mov dl,bl
   mov ah,2
   int 21h

   ret
   printfun endp

   end main

