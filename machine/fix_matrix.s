	.file	"fix_matrix.c"
	.text
	.globl	fix_prod_ele
	.type	fix_prod_ele, @function
fix_prod_ele:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	movq	%rsi, %r10
	movl	$0, %r8d
	movl	$0, %eax
	jmp	.L2
.L3:
	movq	%rdx, %rdi
	salq	$6, %rdi
	addq	%r9, %rdi
	movq	%rax, %rsi
	salq	$6, %rsi
	addq	%r10, %rsi
	movl	(%rsi,%rcx,4), %esi
	imull	(%rdi,%rax,4), %esi
	addl	%esi, %r8d
	addq	$1, %rax
.L2:
	cmpq	$15, %rax
	jle	.L3
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fix_prod_ele, .-fix_prod_ele
	.globl	fix_prod_ele_opt
	.type	fix_prod_ele_opt, @function
fix_prod_ele_opt:
.LFB1:
	.cfi_startproc
	endbr64
	salq	$6, %rdx
	addq	%rdx, %rdi
	salq	$2, %rcx
	leaq	(%rsi,%rcx), %rax
	leaq	1024(%rsi,%rcx), %rsi
	movl	$0, %ecx
.L5:
	movl	(%rax), %edx
	imull	(%rdi), %edx
	addl	%edx, %ecx
	addq	$4, %rdi
	addq	$64, %rax
	cmpq	%rax, %rsi
	jne	.L5
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	fix_prod_ele_opt, .-fix_prod_ele_opt
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
