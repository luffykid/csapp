	.file	"5-5ploy.c"
	.text
	.globl	poly
	.type	poly, @function
poly:
.LFB0:
	.cfi_startproc
	movsd	(%rdi), %xmm2
	movapd	%xmm0, %xmm1
	movl	$1, %eax
	jmp	.L2
.L3:
	movapd	%xmm1, %xmm3
	mulsd	(%rdi,%rax,8), %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm0, %xmm1
	addq	$1, %rax
.L2:
	movslq	%esi, %rdx
	cmpq	%rdx, %rax
	jle	.L3
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	poly, .-poly
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
