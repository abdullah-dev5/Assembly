.model small
.stack 100h
.data
   count2 db '0'
 .code

 main proc

   mov ax,@data
   mov ds,ax

   mov cx,5
 
        loop1:
        push cx
 
      mov cx,10
        loop2:

         mov ah,2
         mov dl, count2    
         int 21h
         inc count2
        
        loop loop2
         mov count2,'0'
   
        pop cx
          mov dl,10
          int 21h
          mov dl,13
          int 21h

         loop loop1

     mov ah,4ch
     int 21h
     main endp
     end main
