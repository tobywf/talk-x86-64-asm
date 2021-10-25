main: ; -O1
    push    rax
    mov edi, .L.str
    xor esi, esi
    xor eax, eax
    call    printf
    mov edi, .L.str.1
    xor eax, eax
    call    printf
    xor edi, edi
    call    puts  ; <-- oops
    xor eax, eax
    pop rcx
    ret
