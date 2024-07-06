.model small
.stack 100h
.data
    ctrl db 13, 10, '$'
    output db 100 dup('$')
.code
main proc
    mov ax, @data
    mov ds, ax
    
      
    lea dx, output  
    mov ah, 10 ; 10 = 0AH   ham nhap 1 chuoi ky tu
    int 21h  
    
    
    lea dx, ctrl
    mov ah, 9       ; xuong dong
    int 21h
    
    mov ah, 9
    int 21h
    call inthuong
    
    lea dx, ctrl
    mov ah, 9
    int 21h 
    
    mov ah, 9
    int 21h
    call inhoa
    
    mov ah, 4ch
    int 21h          ; ket thuc chuong trinh



main endp   

inthuong proc 
    
    lea si ,output + 2  
    lap1:
        mov dl, [si]
        cmp dl, 'A'
        jl in1
        cmp dl, 'Z'
        jg in1
        add dl, 32
        
    in1:
        mov ah, 2   ;in tung ky tu
        int 21h
        inc si; tang vitri si them 1 bit
        cmp [si], '$'
        jne lap1
       
      ret
    
    
inthuong endp 

inhoa proc
    
    lea si, output + 2
    
    lap2:
        mov dl, [si]
        cmp dl, 'a'
        jl in2
        cmp dl, 'z'
        jg in2
        
        sub dl, 32
        
    in2:
        mov ah, 2
        int 21h
        inc si
        cmp [si], '$'
        jne lap2
        
       ret
    
inhoa endp
end