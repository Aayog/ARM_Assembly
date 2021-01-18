.data
var1: .word 4
var2: .word 3

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, adr_var2
	ldr r2, [r0]
	str r2, [r1, r2]
	ldr r3, [r1], r2
	mov r7, #1
SWI 0

adr_var1: .word var1
adr_var2: .word var2
