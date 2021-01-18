.text
.global _start

_start:
	mov r2, #25
	ldr r1, =a
	ldr r0, =0x55555555
over:
	str r0, [r1]
	add r1, r1, #4
	subs r2, r2, #1
	bne over

	mov  r7, #1
SWI 0
.data
a: .space 100
