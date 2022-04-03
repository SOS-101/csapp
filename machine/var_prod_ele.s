	.file	"var_prod_ele.c"
	.text
	.globl	var_prod_ele
	.type	var_prod_ele, @function
var_prod_ele:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movl	$0, %r8d
	movl	$0, %esi
	jmp	.L2
.L3:
	movq	%rcx, %rax
	imulq	%rdi, %rax
	salq	$2, %rax
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movl	(%rax,%rsi,4), %eax
	imull	(%r9,%rsi,4), %eax
	addl	%eax, %r8d
	addq	$1, %rsi
.L2:
	cmpq	%rdi, %rsi
	jl	.L3
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	var_prod_ele, .-var_prod_ele
	.globl	var_prod_ele_opt
	.type	var_prod_ele_opt, @function
var_prod_ele_opt:
.LFB1:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	movq	%rsi, %r10
	leaq	0(,%rdi,4), %r11
	imulq	%rdi, %rcx
	leaq	(%rdx,%r8,4), %rsi
	movl	$0, %eax
	movl	$0, %edi
	jmp	.L5
.L6:
	leaq	(%rcx,%rax), %r8
	movl	(%rsi), %edx
	imull	(%r10,%r8,4), %edx
	addl	%edx, %edi
	addq	%r11, %rsi
	addq	$1, %rax
.L5:
	cmpq	%r9, %rax
	jl	.L6
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	var_prod_ele_opt, .-var_prod_ele_opt
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
