.text
.global _start


_start:
	mov r7, #4
	mov r0, #1
	mov r2, #14
	ldr r1, =name
	SWI 0
	mov r7, #1
SWI 0

.data
name:
	.ascii "This is Aayog\n"
