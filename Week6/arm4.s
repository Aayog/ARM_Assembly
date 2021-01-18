.data
var1: .word 4
var2: .word 3

.text
.global _start

_start:
	ldr r0, a
	ldr r1, b
	ldr r2, [r0]
	str r2, [r1, r2]
	ldr r3, [r1], r2
	mov r7, #1
SWI 0

a: .word var1
b: .word var2
