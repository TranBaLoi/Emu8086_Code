.model small
.stack 100h
.data
    ctrl db 13, 10, '$'
    output db 100 dup('$')
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 10 ; 10 = 0AH   ham nhap 1 chuoi ky tu
    lea dx, output
    int 21h  
    
    
    lea dx, ctrl
    mov ah, 9       ; xuong dong
    int 21h
    
    
    lea dx, output + 2
    mov ah, 9   ; in ra man hinh
    int 21h
    
    mov ah, 4ch
    int 21h          ; ket thuc chuong trinh



main endp
end