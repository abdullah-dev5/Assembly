.model small
.stack 100h
.data
 printvar db 'The Character displayed using main procedure : $'
 printvar2 db 'The Character displayed using procedure : $'
  
  ;new line shorthand
   line db 10,13,"$"
.code
   main proc
   mov ax,@data
   mov ds,ax
   mov bl,'A'

   lea dx,printvar
   mov ah,9
   int 21h

  mov dl,bl
   mov ah,2
   int 21h

   ; new line shortcut
   mov ah,9 
   lea dx,line
   int 21h
   

   call printfun

   mov ah,9 
   lea dx,line
   int 21h

   add bl,1
   lea dx,printvar
   mov ah,9
   int 21h
    mov dl,bl
   mov ah,2
   int 21h



   mov ah,4ch
   int 21h
   main endp


   printfun proc

   add bl,1
   lea dx,printvar2
   mov ah,9
   int 21h
    mov dl,bl
   mov ah,2
   int 21h

   ret
   printfun endp

   end main

