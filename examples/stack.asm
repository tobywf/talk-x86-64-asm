; - O0

func:
    ; --- create stack frame
    push    rbp
    mov rbp, rsp
    ; luckily our variables fit into
    ; the x86_64 red zone so we don't
    ; have to grow the stack! AMD64 rocks
    ; --- load g,h from stack
    mov rax, qword ptr [rbp + 24]
    mov r10, qword ptr [rbp + 16]
    ; --- local vars x8
    mov qword ptr [rbp - 8], rdi
    mov qword ptr [rbp - 16], rsi
    mov qword ptr [rbp - 24], rdx
    mov qword ptr [rbp - 32], rcx
    mov qword ptr [rbp - 40], r8
    mov qword ptr [rbp - 48], r9
    mov qword ptr [rbp - 56], r10
    mov qword ptr [rbp - 64], rax
    ; -- add x using rax
    mov rax, qword ptr [rbp - 8]
    add rax, qword ptr [rbp - 16]
    add rax, qword ptr [rbp - 24]
    add rax, qword ptr [rbp - 32]
    ; save rax to local var x (stack)
    mov qword ptr [rbp - 72], rax
    ; --- add y using rax
    mov rax, qword ptr [rbp - 40]
    add rax, qword ptr [rbp - 48]
    add rax, qword ptr [rbp - 56]
    add rax, qword ptr [rbp - 64]
    ; save rax to local var y (stack)
    mov qword ptr [rbp - 80], rax
    ; --- add z using rax
    ; overwrite rax by loading x
    mov rax, qword ptr [rbp - 72]
    ; reload y which was previously in rax!
    add rax, qword ptr [rbp - 80]
    ; save z...
    mov qword ptr [rbp - 88], rax
    ; then load it again! genius!
    mov rax, qword ptr [rbp - 88]
    ; --- destroy stack frame
    pop rbp
    ret

main:
    ; --- create stack frame
    push    rbp
    mov rbp, rsp
    ; no red zone - need to grow stack
    sub rsp, 96
    ; --- local variables
    mov dword ptr [rbp - 4], 0
    mov qword ptr [rbp - 16], 1
    mov qword ptr [rbp - 24], 2
    mov qword ptr [rbp - 32], 3
    mov qword ptr [rbp - 40], 4
    mov qword ptr [rbp - 48], 5
    mov qword ptr [rbp - 56], 6
    mov qword ptr [rbp - 64], 7
    mov qword ptr [rbp - 72], 8
    ; --- prepare to call (registers)
    mov rdi, qword ptr [rbp - 16]
    mov rsi, qword ptr [rbp - 24]
    mov rdx, qword ptr [rbp - 32]
    mov rcx, qword ptr [rbp - 40]
    mov r8, qword ptr [rbp - 48]
    mov r9, qword ptr [rbp - 56]
    ; --- prepare to call (stack)
    mov rax, qword ptr [rbp - 64]
    mov r10, qword ptr [rbp - 72]
    ; move to stack (Q: why is push not used?)
    mov qword ptr [rsp], rax
    mov qword ptr [rsp + 8], r10
    call    func
    cmp rax, 0      ; if (func > 0)
    jbe .LBB1_2     ; jump below or equal (func <= 0)
    mov dword ptr [rbp - 4], 0 ; int ret = 0
    jmp .LBB1_3
.LBB1_2:
    mov dword ptr [rbp - 4], 1 ; int ret = 1
.LBB1_3:
    mov eax, dword ptr [rbp - 4] ; return ret
    ; --- destroy stack frame
    ; shrink stack
    add rsp, 96
    pop rbp
    ret


; -O1

func:
    ; clang is smart in -O1, just use rax
    ; no clean-up necessary!
    lea rax, [rdi + rsi]
    add rax, rdx
    add rax, rcx
    add rax, r8
    add rax, r9
    add rax, qword ptr [rsp + 8]
    add rax, qword ptr [rsp + 16]
    ret

main:
    ; clang is smart in -O1, func is always > 0
    xor eax, eax
    ret
