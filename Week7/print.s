.global main
.func  main

main:
	ldr r0, =string
	ldr r1, =0xffff
	bl printf
	b exit

exit:
	mov r7, #1
	SWI 0
.data
string:
	.asciz "%d\n"
