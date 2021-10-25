	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	xor	eax, eax
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
