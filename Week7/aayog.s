.global _start

_start:
	mov r3, #1
loop:
	mov r7, #4
	mov r0, #1
	mov r2, r3
	ldr r1, =nam
	SWI 0
	mov r0, #1
	mov r2, #1
	ldr r1, =br
	SWI 0
	cmp r3, #5
	beq out
	add r3, r3, #1
	b loop
out:
	mov r7, #1
SWI 0
.data
nam:
	.ascii "Aayog"
br:
	.ascii "\n"
