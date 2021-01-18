count .req r0
max .req r1

pointer .req r2
next .req r3

.data
mydata: .word 69, 87, 96, 45, 75
.text
.global _start

_start:
	mov count, #5
	mov max, #0
	ldr pointer, =mydata
again:
	ldr next, [pointer]
	cmp max, next
	bhs ctnu
	mov max, next
ctnu:
	add pointer, pointer, #4
	subs count, count, #1
	bne again
	mov r0, max
	mov r7, #1
SWI 0
