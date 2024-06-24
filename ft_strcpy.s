section .text
    global _ft_strcpy

_ft_strcpy:
    mov rax, rdi

strcpy_loop:
    mov dl, [rsi]
    mov [rdi], dl
    inc rsi
    inc rdi
    test dl, dl
    jnz strcpy_loop
    ret