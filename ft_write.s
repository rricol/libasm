section .text
    extern ___error
    global _ft_write

_ft_write:
    mov rax, 0x2000004
    syscall
    cmp rax, -1
    jne done

    call ___error           ; get the address of errno
    mov [rax], rdi          ; set errno to the error code in rdi

done:
    ret