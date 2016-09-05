	.text
	.intel_syntax noprefix
	.file	"print.c"
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
	xor	esi, esi
	xor	eax, eax
	call	printf
	mov	edi, .L.str.1
	xor	eax, eax
	call	printf
	xor	edi, edi
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
	.asciz	"string: %s\n"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"string: "
	.size	.L.str.1, 9


	.ident	"clang version 3.8.1 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
