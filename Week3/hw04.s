	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"hw04.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter any word: \000"
	.align	2
.LC1:
	.ascii	"%s\000"
	.align	2
.LC2:
	.ascii	"%d consecutive %c\012\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #88
	ldr	r0, .L8
	bl	printf
	sub	r3, fp, #92
	mov	r1, r3
	ldr	r0, .L8+4
	bl	__isoc99_scanf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L6:
	sub	r2, fp, #92
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	sub	r1, fp, #4
	add	r3, r1, r3
	ldrb	r3, [r3, #-88]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L3
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L4
.L5:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	sub	r2, fp, #92
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r1, r3
	sub	r1, fp, #4
	add	r3, r1, r3
	ldrb	r3, [r3, #-88]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L5
	sub	r2, fp, #92
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [fp, #-12]
	ldr	r0, .L8+8
	bl	printf
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	sub	r2, fp, #92
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L6
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
