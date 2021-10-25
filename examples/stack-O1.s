	.text
	.intel_syntax noprefix
	.file	"stack.c"
	.globl	func
	.align	16, 0x90
	.type	func,@function
func:                                   # @func
	.cfi_startproc
# BB#0:
	lea	rax, [rdi + rsi]
	add	rax, rdx
	add	rax, rcx
	add	rax, r8
	add	rax, r9
	add	rax, qword ptr [rsp + 8]
	add	rax, qword ptr [rsp + 16]
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
	xor	eax, eax
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
