.global _start
_start:
	mov r5, #1
	mov r6, #1
	mov r8, #1
_loop2:
	mov r3, #2
	add r6, r6, #1
	cmp r6, #4
	beq exit
_loop1:
	mov r0, #1
	mov r2, r3
	mov r7, #4
	ldr r1, =msg
	SWI 0
	mov r0, #1
	mov r2, #1
	ldr r1, =br
	SWI 0
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #12
	beq _loop2
	b _loop1
exit:
	mov r7, #1
SWI 0

.data
msg:
	.ascii " **********"
br:
	.ascii "\n"
