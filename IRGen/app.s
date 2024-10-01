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
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	$0, 52(%rsp)
	movl	$0, 56(%rsp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	cmpl	$100000, 56(%rsp)               # imm = 0x186A0
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	52(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsp)
	cmpl	$512, 52(%rsp)                  # imm = 0x200
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, 52(%rsp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, 48(%rsp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	cmpl	$512, 48(%rsp)                  # imm = 0x200
	jge	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	$0, 44(%rsp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$512, 44(%rsp)                  # imm = 0x200
	jge	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	movl	44(%rsp), %eax
	imull	44(%rsp), %eax
	movl	%eax, 68(%rsp)
	movl	48(%rsp), %eax
	imull	48(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	$-16777216, 60(%rsp)            # imm = 0xFF000000
	movl	68(%rsp), %eax
	addl	64(%rsp), %eax
	movl	52(%rsp), %ecx
	imull	52(%rsp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=3
	movl	$-1, 60(%rsp)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=3
	movl	44(%rsp), %ecx
	movl	48(%rsp), %edx
	movl	60(%rsp), %r8d
	callq	_Z11simPutPixeliii
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=3
	movl	44(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 44(%rsp)
	jmp	.LBB0_7
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	callq	_Z8simFlushv
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	56(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 56(%rsp)
	jmp	.LBB0_1
.LBB0_16:
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
