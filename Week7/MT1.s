.data
var1: .word 3

.global _start

_start:
	ldr r0, adr_var1
	mov r1, #1
	mov r2, #0
loop:
	cmp r1, #9
	bhi exit
	str r1, [r0, r2]
	add r1, r1, #2
	add r2, r2, #4
	b loop
exit:
	mov r7, #1
SWI 0
adr_var1: .word var1
