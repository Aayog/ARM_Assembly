.data
var1: .word 1

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, [r0]
	str r1, [r0]
	add r1, r1, #1
	str r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #12]
	mov r7, #1
SWI 0

adr_var1: .word var1

