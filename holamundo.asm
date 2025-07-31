global _start

section .data
    message db "Hola Mundo :3", 0xA
    message_length equ $ - message

section .text

_start:
    ; print 'Hola Mundo'
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, message_length
    syscall

    ; syscall exit

    mov rax, 0x3C
    mov rdi, 0
    syscall
