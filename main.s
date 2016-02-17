	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	drawBackground
	.type	drawBackground, %function
drawBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #100663296
	mov	r0, ip
	mvn	r1, #32768
	add	ip, ip, #480
.L2:
	mov	r2, r0
	mov	r3, #0
.L3:
	add	r3, r3, #1
	cmp	r3, #160
	strh	r1, [r2, #0]	@ movhi
	add	r2, r2, #480
	bne	.L3
	add	r0, r0, #2
	cmp	r0, ip
	bne	.L2
	bx	lr
	.size	drawBackground, .-drawBackground
	.align	2
	.global	drawRectangle
	.type	drawRectangle, %function
drawRectangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #100663296
	mov	r0, r2
	mov	ip, r2
	add	r0, r0, #7360
	add	r2, r2, #69632
	mov	r1, #10560
	add	ip, ip, #7424
	add	r2, r2, #148
	add	r0, r0, #20
	add	r1, r1, #10
	add	ip, ip, #56
.L8:
	mov	r3, r0
.L9:
	strh	r1, [r3, #0]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L9
	add	r0, r0, #2
	cmp	r0, ip
	add	r2, r2, #2
	bne	.L8
	bx	lr
	.size	drawRectangle, .-drawRectangle
	.align	2
	.global	delay
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #79872
	sub	sp, sp, #8
	add	r3, r3, #128
.L13:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L13
	add	sp, sp, #8
	bx	lr
	.size	delay, .-delay
	.align	2
	.global	drawStoplight
	.type	drawStoplight, %function
drawStoplight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	ip, r2, #0
	cmp	r2, ip
	stmfd	sp!, {r4, r5, r6, r7, r8}
	blt	.L15
	mul	r6, r2, r2
	add	r1, ip, r1
	add	r0, ip, r0
	rsb	r1, r1, r1, asl #4
	add	r8, r0, r1, asl #4
	mov	r8, r8, asl #1
	add	r8, r8, #100663296
	mov	r7, ip
.L17:
	mul	r5, r7, r7
	mov	r0, r8
	mov	r1, ip
.L19:
	mla	r4, r1, r1, r5
	add	r1, r1, #1
	cmp	r6, r4
	strgeh	r3, [r0, #0]	@ movhi
	cmp	r2, r1
	add	r0, r0, #480
	bge	.L19
	add	r7, r7, #1
	cmp	r2, r7
	add	r8, r8, #2
	bge	.L17
.L15:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
	.size	drawStoplight, .-drawStoplight
	.align	2
	.global	drawFrame6
	.type	drawFrame6, %function
drawFrame6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #115
	mov	r1, #125
	mov	r2, #10
	mov	r3, #0
	b	drawStoplight
	.size	drawFrame6, .-drawFrame6
	.align	2
	.global	drawFrame5
	.type	drawFrame5, %function
drawFrame5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #115
	mov	r1, #125
	mov	r2, #10
	mov	r3, #992
	b	drawStoplight
	.size	drawFrame5, .-drawFrame5
	.align	2
	.global	drawFrame4
	.type	drawFrame4, %function
drawFrame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #115
	mov	r1, #80
	mov	r2, #10
	mov	r3, #0
	b	drawStoplight
	.size	drawFrame4, .-drawFrame4
	.align	2
	.global	drawFrame3
	.type	drawFrame3, %function
drawFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1020
	mov	r0, #115
	mov	r1, #80
	mov	r2, #10
	add	r3, r3, #3
	b	drawStoplight
	.size	drawFrame3, .-drawFrame3
	.align	2
	.global	drawFrame2
	.type	drawFrame2, %function
drawFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #115
	mov	r1, #35
	mov	r2, #10
	mov	r3, #0
	b	drawStoplight
	.size	drawFrame2, .-drawFrame2
	.align	2
	.global	drawFrame1
	.type	drawFrame1, %function
drawFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #115
	mov	r1, #35
	mov	r2, #10
	mov	r3, #31
	b	drawStoplight
	.size	drawFrame1, .-drawFrame1
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r3, #1024
	add	r3, r3, #3
	mov	r2, #67108864
	sub	sp, sp, #12
	strh	r3, [r2, #0]	@ movhi
	bl	drawBackground
	bl	drawRectangle
	mov	r3, #79872
	add	r3, r3, #128
.L28:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L28
.L43:
	bl	drawFrame1
	mov	r3, #79872
	add	r3, r3, #128
.L29:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L29
	bl	drawFrame2
	mov	r3, #79872
	add	r3, r3, #128
.L30:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L30
	bl	drawFrame3
	mov	r3, #79872
	add	r3, r3, #128
.L31:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L31
	bl	drawFrame4
	mov	r3, #79872
	add	r3, r3, #128
.L32:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L32
	bl	drawFrame5
	mov	r3, #79872
	add	r3, r3, #128
.L33:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L33
	bl	drawFrame6
	mov	r3, #79872
	add	r3, r3, #128
.L34:
	ldr	r2, [sp, #4]
	subs	r3, r3, #1
	add	r2, r2, #1
	str	r2, [sp, #4]
	bne	.L34
	b	.L43
	.size	main, .-main
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4
	add	r0, r1, r0, asl #4
	mov	r0, r0, asl #1
	add	r0, r0, #100663296
	strh	r2, [r0, #0]	@ movhi
	bx	lr
	.size	setPixel, .-setPixel
	.ident	"GCC: (devkitARM release 31) 4.5.0"
