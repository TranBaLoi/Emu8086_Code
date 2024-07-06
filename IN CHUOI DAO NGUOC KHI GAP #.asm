.model small
.stack 100h
.data   
    str db 50 dup('$')
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov cx,0
        
        start:
            inc cx
            mov ah,1
            int 21h
            
            cmp al,'#'
            je kthuc
            
            push ax
            jmp start
            
        kthuc:
            mov ah,2
            mov dl,0    ;in dau cach
            int 21h
            
            dec cx
            pop dx
            mov ah,2
            int 21h
            
            cmp cx,1
            jne kthuc
            
        mov ah, 4ch
        int 21h
          
    main endp
end