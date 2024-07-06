.model small
.stack 100h
.data
    ctrl db 13, 10, '$'
    output db ?,'$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 1
    int 21h  
    
    sub al, 20h      
    mov output, al ; gan gia tri cua thanh ghi ah vao output
    
    lea dx, ctrl
    mov ah, 9       ; xuong dong
    int 21h
    
    
    lea dx, output
    mov ah, 9   ; in ra man hinh
    int 21h
    
    mov ah, 4ch
    int 21h          ; ket thuc chuong trinh



main endp
end