section .text
    global _ft_strlen

_ft_strlen:
    xor rax, rax

strlen_loop:
    cmp byte [rdi + rax], 0
    je done
    inc rax
    jmp strlen_loop

done:
    ret