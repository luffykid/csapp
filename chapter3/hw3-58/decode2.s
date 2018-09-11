	.file	"decode2.c"
	.text
	.globl	decode2
	.type	decode2, @function
decode2:
.LFB0:
	.cfi_startproc
	subq	%rdx, %rsi
	imulq	%rsi, %rdi
	salq	$63, %rsi
	sarq	$63, %rsi
	movq	%rdi, %rax
	xorq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	decode2, .-decode2
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
