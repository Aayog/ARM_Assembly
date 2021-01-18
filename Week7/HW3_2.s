.data
var1: .word 3
var2: .word 4

.text
.global _start

_start:
	ldr r0, adr_var1
	ldr r1, adr_var2
	ldr r2, [r0]
	ldr r3, [r1]
	cmp r2, r3
	blo if
	mov r3, #5
	b out

if:
	mov r3, #2
out:
	mov r7, #1

SWI 0

adr_var1: .word var1
adr_var2: .word var2
