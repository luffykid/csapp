	.file	"3_67.c"
	.text
	.globl	process
	.type	process, @function
process:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	movslq	%esi, %rsi
	movq	%rsi, (%rdi)
	movq	16(%rsp), %rdx
	movq	%rdx, 8(%rdi)
	movq	48(%rsp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 16(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	process, .-process
	.globl	eval
	.type	eval, @function
eval:
.LFB1:
	.cfi_startproc
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdx, (%rsp)
	pushq	%rsp
	.cfi_def_cfa_offset 120
	pushq	%rsi
	.cfi_def_cfa_offset 128
	pushq	%rdi
	.cfi_def_cfa_offset 136
	pushq	80(%rsp)
	.cfi_def_cfa_offset 144
	pushq	80(%rsp)
	.cfi_def_cfa_offset 152
	pushq	80(%rsp)
	.cfi_def_cfa_offset 160
	movl	$10, %esi
	leaq	56(%rsp), %rdi
	call	process
	movq	64(%rsp), %rax
	addq	56(%rsp), %rax
	addq	72(%rsp), %rax
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	eval, .-eval
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
