main: ; -O0
    push    rbp                  ; save old stack frame
    mov rbp, rsp                 ; make new stack frame
    ; (rbp points to top of stack)
    sub rsp, 16                  ; "allocate" more stack space
    ; (has to be 16 byte aligned)
    movabs  rdi, .L.str          ; load pointer to string
    mov dword ptr [rbp - 4], 0   ; save 0 to stack (why?)
    call    puts
    xor ecx, ecx                 ; rcx = 0 (why?)
    mov dword ptr [rbp - 8], eax ; save eax to stack (why?)
    mov eax, ecx                 ; set eax = ecx = 0 (why?)
    add rsp, 16                  ; "deallocate" stack space
    pop rbp                      ; restore old stack frame
    ret

main: ; -O1
    push    rax     ; save rax
    mov edi, .L.str ; load parameter (ptr)
    call    puts    ; call puts
    xor eax, eax    ; rax = 0 (return value)
    pop rdx         ; pop stack
    ret

.L.str:
    .asciz  "Hello World"
    .size   .L.str, 12
