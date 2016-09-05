main: ; -O0
    push    rbp                 ; save old stack frame
    mov rbp, rsp                ; make new stack frame (rbp points to top of stack)
    xor eax, eax                ; rax = 0 (return val)
    mov dword ptr [rbp - 4], 0  ; set local var to 0
    ; n.b. explicit operand length
    ; cannot be inferred from value (0)
    pop rbp                     ; restore old stack frame
    ret

main: ; -O1
    xor eax, eax                ; rax = 0 (return val)
    ret
