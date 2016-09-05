	.text
	.intel_syntax noprefix
	.file	"puts.c"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	push	rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	mov	edi, .L.str
	call	puts
	xor	eax, eax
	pop	rcx
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello World"
	.size	.L.str, 12


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
