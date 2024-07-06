.model small
.stack 100h
.data
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
start:
    in al, 125; cổng cảm biến nhiệt độ
    
    cmp al, 70
    jl bat
    
    cmp al, 100
    jle L1
    
    cmp al, 100
    jg tat
    
bat:
    mov al, 1
    out 127, al  ; cong dkhien nhiet do
    jmp L1
tat:
    mov al, 0
    out 127, al
    
L1: 
    jmp start
main endp
end