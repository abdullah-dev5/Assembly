.model small
.stack 100h
.data
        var1 db 'Enter Any Number : $'
        var2 db 'Values are equal $ '
        var3 db 'values are not equal $'
.code

main proc

        mov ax,@data
        mov ds,ax

        mov cl,'5'
       
        mov dx,offset var1
        mov ah,9
        int 21h

        mov ah,1
        int 21h


                ;we compare both.
        cmp al,cl
                ;if condtion equal  jump to lbl block.
        je lbl
                ; it is else condtion in which it will jump to else block
         jmp lbl2 
      
        lbl:
        mov dl,10
        int 21h
        mov dl,13
        int 21h

        lea dx,var2
        mov ah,9
        int 21h
        ;it will jump to direct exit from program.
        jmp exit

         lbl2:
         mov dl,10
         int 21h
         mov dl,13
         int 21h

         lea dx,var3
         mov ah,9
         int 21h


        
        Exit:


        mov ah,4ch
        int 21h

        main endp
        end main
       
