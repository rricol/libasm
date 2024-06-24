section .text
    extern ___error
    global _ft_read

_ft_read:
    mov rax, 0x2000003
    syscall
    cmp rax, -1
    jne done

    call ___error
    mov [rax], rdi

done:
    ret