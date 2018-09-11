	.file	"merge.c"
	.text
	.globl	merge
	.type	merge, @function
merge:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$0, %eax
	movl	$0, %r8d
	jmp	.L2
.L9:
	movl	%r9d, %ebx
.L3:
	movl	%ebx, (%rdx)
	movzbl	%r11b, %r11d
	addl	%r11d, %r8d
	cmpl	%r9d, %r10d
	setge	%r9b
	movzbl	%r9b, %r9d
	addl	%r9d, %eax
.L2:
	cmpl	%eax, %r8d
	movl	%eax, %r9d
	cmovge	%r8d, %r9d
	cmpl	%ecx, %r9d
	jge	.L11
	movslq	%r8d, %r9
	movl	(%rdi,%r9,4), %r10d
	movslq	%eax, %r9
	movl	(%rsi,%r9,4), %r9d
	cmpl	%r9d, %r10d
	setl	%r11b
	jge	.L9
	movl	%r10d, %ebx
	jmp	.L3
.L11:
	movl	$0, %r9d
	jmp	.L5
.L6:
	movslq	%r8d, %r11
	movslq	%r9d, %r10
	movl	(%rdi,%r11,4), %r11d
	movl	%r11d, (%rdx,%r10,4)
	leal	1(%r9), %r9d
	leal	1(%r8), %r8d
.L5:
	cmpl	%ecx, %r8d
	jl	.L6
	jmp	.L7
.L8:
	movslq	%eax, %r8
	movslq	%r9d, %rdi
	movl	(%rsi,%r8,4), %r8d
	movl	%r8d, (%rdx,%rdi,4)
	leal	1(%r9), %r9d
	leal	1(%rax), %eax
.L7:
	cmpl	%ecx, %eax
	jl	.L8
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
