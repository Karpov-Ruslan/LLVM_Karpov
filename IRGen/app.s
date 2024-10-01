	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"app.cpp"
	.def	_Z3appv;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z3appv                         # -- Begin function _Z3appv
	.p2align	4, 0x90
_Z3appv:                                # @_Z3appv
.seh_proc _Z3appv
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	cmpl	$512, %r14d                     # imm = 0x200
	leal	1(%r14), %eax
	movl	%eax, %r14d
	cmovgel	%ebx, %r14d
	movl	%r14d, %ebp
	imull	%r14d, %ebp
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	movl	%esi, %r15d
	imull	%esi, %r15d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edi, %eax
	imull	%edi, %eax
	addl	%r15d, %eax
	cmpl	%ebp, %eax
	movl	$0, %r8d
	sbbl	%r8d, %r8d
	orl	$-16777216, %r8d                # imm = 0xFF000000
	movl	%edi, %ecx
	movl	%esi, %edx
	callq	_Z11simPutPixeliii
	incl	%edi
	cmpl	$512, %edi                      # imm = 0x200
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	incl	%esi
	cmpl	$512, %esi                      # imm = 0x200
	jne	.LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	callq	_Z8simFlushv
	jmp	.LBB0_1
	.seh_endproc
                                        # -- End function
