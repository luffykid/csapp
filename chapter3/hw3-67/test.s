	.file	"test.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	test
	.type	test, @function
test:
.LFB1:
	.cfi_startproc
	movq	%rdi, %rax
	movq	8(%rsp), %rdx
	movq	%rdx, -40(%rsp)
	movq	16(%rsp), %rdx
	movq	%rdx, -32(%rsp)
	movq	-40(%rsp), %rsi
	movq	-32(%rsp), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	24(%rsp), %rdx
	movq	%rdx, 16(%rax)
	ret
	.cfi_endproc
.LFE1:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
