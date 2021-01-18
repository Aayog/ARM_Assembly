count .req r0
min .req r1

pointer .req r2
next .req r3

.data
mydata: .word 69, 87, 96, 45, 75
.text
.global _start

_start:
	mov count, #5
	ldr min, =mydata
	ldr pointer, =mydata
again:
	ldr next, [pointer]
	cmp min, next
	bls ctnu
	mov min, next
ctnu:
	add pointer, pointer, #4
	subs count, count, #1
	bne again
	mov r0, min
	mov r7, #1
SWI 0
