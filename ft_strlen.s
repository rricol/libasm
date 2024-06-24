section .text
    global _ft_strlen

_ft_strlen:
    xor rax, rax
    xor rcx, rcx

repeat:
    cmp byte [rdi + rcx], 0
    je done
    inc rcx
    jmp repeat

done:
    mov rax, rcx
    ret