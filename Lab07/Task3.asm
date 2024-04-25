.model small
.stack 100h
.data
 printvar db 'Inside the main procedure. Enter a Character : $'
 printvar2 db 'The Character displayed using procedure : $'
  
  ;new line shorthand
   line db 10,13,"$"
.code
   main proc
   mov ax,@data
   mov ds,ax


   

   lea dx,printvar
   mov ah,9
   int 21h

   mov ah,1
   int 21h

  mov bl,al
   
   ; new line shortcut
   mov ah,9 
   lea dx,line
   int 21h
   

   call printfun

   
   mov ah,4ch
   int 21h
   main endp


   printfun proc

   lea dx,printvar2
   mov ah,9
   int 21h
    mov dl,bl
   mov ah,2
   int 21h

   ret
   printfun endp

   end main

