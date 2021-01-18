.data
var1: .word 33

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, [r0]
	ror r1, r1, #1
	ror r1, r1, #1
	ror r1, r1, #1
	mov r7, #1
SWI 0

adr_var1: .word var1
