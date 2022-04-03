	.file	"fact_for.c"
	.text
	.p2align 4
	.globl	fact_for
	.type	fact_for, @function
fact_for:
.LFB0:
	.cfi_startproc
	endbr64
	cmpq	$1, %rdi
	jle	.L4
	addq	$1, %rdi
	movl	$1, %r8d
	movl	$2, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	imulq	%rax, %r8
	addq	$1, %rax
	cmpq	%rdi, %rax
	jne	.L3
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$1, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	fact_for, .-fact_for
	.ident	"GCC: (Ubuntu 11.2.0-7ubuntu2) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
