.model small
.stack 100h
.data
 printvar db 'Inside the main procedure. Enter a Character : $'
 printvar2 db 'The Character displayed using procedure : $'
count db '0'
  
  ;new line shorthand
   line db 10,13,"$"
.code
   main proc
   mov ax,@data
   mov ds,ax

   

   call printfun

   
   mov ah,4ch
   int 21h
   main endp


   printfun proc

   lea dx,printvar2
   mov ah,9
   int 21h

   mov cx,10

   loop1:   
   mov ah,2
   mov dl,count
   int 21h
   add count,1


   loop loop1

   ret
   printfun endp

   end main

