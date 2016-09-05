	.text
	.intel_syntax noprefix
	.file	"stack.c"
	.globl	func
	.align	16, 0x90
	.type	func,@function
func:                                   # @func
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp2:
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rbp + 24]
	mov	r10, qword ptr [rbp + 16]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], r8
	mov	qword ptr [rbp - 48], r9
	mov	qword ptr [rbp - 56], r10
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 16]
	add	rax, qword ptr [rbp - 24]
	add	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 40]
	add	rax, qword ptr [rbp - 48]
	add	rax, qword ptr [rbp - 56]
	add	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 72]
	add	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 88], rax
	mov	rax, qword ptr [rbp - 88]
	pop	rbp
	ret
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp5:
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 16], 1
	mov	qword ptr [rbp - 24], 2
	mov	qword ptr [rbp - 32], 3
	mov	qword ptr [rbp - 40], 4
	mov	qword ptr [rbp - 48], 5
	mov	qword ptr [rbp - 56], 6
	mov	qword ptr [rbp - 64], 7
	mov	qword ptr [rbp - 72], 8
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 40]
	mov	r8, qword ptr [rbp - 48]
	mov	r9, qword ptr [rbp - 56]
	mov	rax, qword ptr [rbp - 64]
	mov	r10, qword ptr [rbp - 72]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	func
	cmp	rax, 0
	jbe	.LBB1_2
# BB#1:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB1_3
.LBB1_2:
	mov	dword ptr [rbp - 4], 1
.LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 96
	pop	rbp
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
