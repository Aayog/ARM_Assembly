.global _start

_start:
	ldr r2, =0xfffffff1
	mov r3, #0x0f
	adds r3, r3, r2
	add r3, r3, #0x7
	mov r1, r3
	mov r7, #1
SWI 0
