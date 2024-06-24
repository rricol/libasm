section .text
    global _ft_strcmp

_ft_strcmp:
    push rbx
    xor rax, rax
    xor rcx, rcx

strcmp_loop:
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, bl
    jne not_equal
    test al, al
    je done
    inc rcx
    jmp strcmp_loop

not_equal:
    sub al, bl
    movsx rax, al
    pop rbx
    ret

done:
    pop rbx
    ret
