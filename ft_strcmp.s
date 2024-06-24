section .text
    global _ft_strcmp

_ft_strcmp:
    xor rax, rax
    xor rbx, rbx

cmp_loop:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, bl
    jne done
    cmp al, 0
    je done
    cmp bl, 0
    je done
    inc rdi
    inc rsi
    jmp cmp_loop

done:
    sub rax, rbx
    ret

