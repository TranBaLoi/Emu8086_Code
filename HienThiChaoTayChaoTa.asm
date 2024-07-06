.model small
.stack 100h
.data
    chaotay db 'HELLO $'
    chaota db 'xinchao $'
    ctrl db 13, 10 ,'$'
.code

main proc
    mov ax, @data      ;lay du lieu tu data vao thanh ghi ds
    mov ds, ax
    
    lea dx, chaotay  
    mov ah, 9
    int 21h
    
    lea dx, ctrl
    mov ah, 9
    int 21h
    
    lea dx, chaota
    mov ah, 9
    int 21h
    
    mov ah, 4ch   ; tro ve dos
    int 21h
    
main endp
end main