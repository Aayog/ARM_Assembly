.text
.global _start

_start:
	mov r0, #1
	ldr r1, =msg
	ldr r2, =len
	mov r7, #4
	swi 0
	mov r7, #1
	swi 0
.data
msg:
	.asciz "hello world\n"
len = .-msg
