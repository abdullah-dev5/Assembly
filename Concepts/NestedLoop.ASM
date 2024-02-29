.model small
.stack 100h
.data
   var1 db 'printing Outer loop  number : $'
   var2 db 'printing inner loop number : $'
   count2 db '0'
   count db '0'
 .code

 main proc

   mov ax,@data
   mov ds,ax

   mov cx,5
 
        loop1:
        push cx
         mov ah,9
         lea dx,var1
         int 21h

         mov ah,2
         mov dl, count    
         int 21h

    
    


         inc count
          mov dl,10
          int 21h
          mov dl,13
          int 21h

      mov cx,3
        loop2:
         mov ah,9
         lea dx,var2
         int 21h

         mov ah,2
         mov dl, count2    
         int 21h

    
    


         inc count2
          mov dl,10
          int 21h
          mov dl,13
          int 21h
        
        loop loop2
         mov count2,'0'
   
        pop cx

         loop loop1

     mov ah,4ch
     int 21h
     main endp
     end main
