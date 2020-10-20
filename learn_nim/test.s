	.file	"test.c"
	.text
	.globl	d
	.def	d;	.scl	2;	.type	32;	.endef
	.seh_proc	d
d:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movb	$97, -1(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	addl	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	f
	.def	f;	.scl	2;	.type	32;	.endef
	.seh_proc	f
f:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	movl	$60, -4(%rbp)
	movb	$100, -5(%rbp)
	movl	-4(%rbp), %eax
	movl	16(%rbp), %edx
	movl	%eax, %ecx
	call	d
	movl	%eax, -12(%rbp)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$20, -4(%rbp)
	movl	$65, %edx
	movl	$1, %ecx
	call	f
	movl	$30, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movb	$100, -9(%rbp)
	movsbl	-9(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	call	f
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev1, Built by MinGW-W64 project) 6.3.0"
