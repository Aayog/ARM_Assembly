.global _start

_start:
	mov r1, #0x35
	and r2, r1, #0x0f
	mov r0, #0x97
	mov r1, #0xf0
	orr r2, r0, r1
	mov r2, #0x4f
	mov r3, #0x39
	subs r4, r2, r3
	mov r0, #0x9a
	movs r1, r0, lsr #3
	mov r7, #1
SWI 0
