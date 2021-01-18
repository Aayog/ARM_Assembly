.global _start

_start:
	mov r7, #4
	mov r0, #1
	mov r2, #12
	mov r3, #1
	ldr r1, =string
	SWI 0
	ldr r1, =print
	mov r7, #1
	SWI 0

.data
string:
	.ascii "Hello World\n"
print:
	.ascii "\n"
