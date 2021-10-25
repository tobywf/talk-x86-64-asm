	.text
	.intel_syntax noprefix
	.file	"print.c"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	sub	rsp, 32
	movabs	rdi, .L.str
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 16], 0
	mov	rsi, qword ptr [rbp - 16]
	mov	al, 0
	call	printf
	movabs	rdi, .L.str.1
	mov	dword ptr [rbp - 20], eax # 4-byte Spill
	mov	al, 0
	call	printf
	movabs	rdi, .L.str.2
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax # 4-byte Spill
	mov	al, 0
	call	printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 28], eax # 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string: %s\n"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"string: "
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s\n"
	.size	.L.str.2, 4


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
