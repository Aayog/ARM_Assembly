.data
var1: .word 1

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, [r0]
	str r1, [r0, #4]
	mov r7, #1
SWI 0

adr_var1: .word var1
