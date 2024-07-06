.model small
.stack 100h
.data
    port equ 2C0H
.code
main proc 
    mov ax, @data
    mov ds, ax
    
start:
    mov al, 00000000B
    mov dx, port
    out dx, al
    
    mov cx, 250
L1:
    nop
    loop L1
    
    mov al, 11111111B
    out dx, al
    mov cx, 250
L2:
    nop
    loop L2
    
   jmp start
    
main endp
end