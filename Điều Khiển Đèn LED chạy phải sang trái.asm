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

L2:
    out dx, al
    mov cx, 550
L1:
    nop
    loop L1
    
    ror al, 1
    jmp L2

jmp start
    
main endp
end