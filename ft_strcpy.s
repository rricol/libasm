section .text
    global _ft_strcpy

_ft_strcpy:
    mov rax, rdi

cpy_loop:
    mov al, [rsi]
    mov [rdi], al
    cmp al, 0
    je done
    inc rsi
    inc rdi
    jmp cpy_loop

done:
    ret