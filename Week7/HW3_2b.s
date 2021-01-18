.data
var1: .word 1
var2: .word 0

.text
.global _start

_start:
	ldr r0, adr1
	ldr r4, adr2
	ldr r1, [r0]
	ldr r2, [r4]
_loop:
	cmp r1, #5
	bhi  _exit
	add r2, r2, r1
	add r1, r1, #1
	b _loop
_exit:
	mov r7, #1
SWI 0

adr1: .word var1
adr2: .word var2
