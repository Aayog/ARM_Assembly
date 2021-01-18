.global _start
	
_start:
	EOR R3, R3
	EOR R4, R4
	EOR R5, R5
	
	MOV R4, #3
	MOV R6, #5
	MOV R5, R6
	
_new_number:
	EOR R3, R3
	MOV R3, R6
	EOR R4, R4
	MOV R4, #3
	EOR R5, R5
	MOV R5, R6
	SUB R5, R5, R4
	B _factorise
	
_factorise:
	CMP R4, R6
	BEQ _is_prime 
	CMP R3, R4
	BEQ _inc_num
	CMP R3, R4
	BMI _inc_fact
	SUB R3, R3, R4
	B _factorise
	
_inc_num:
	ADD R6, R6, #2
	B _new_number
	
_inc_fact:
	CMP R4, R6
	BGE _is_prime
	ADD R4, R4, #2
	MOV R3, R6
	B _factorise
	
_is_prime:
	MOV R3, #0
	MOV R10, #0
	LDR R12, =bill
	LDR R9, [R12]
	MOV R8, R6
	MOV R4, R6
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =cmill
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =xmill
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =mill
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =cm
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =xm
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =m
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =c
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =x
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	LDR R12, =i
	LDR R9, [R12]
	MOV R8, R4
	BL _chk_num
	BL _print_digit
	MOV R10, #0
	MOV R0, #1
	LDR R1, =ending
	MOV R2, #10
	MOV R7, #4
	SWI 0
	@CMP R6, #1000
	@BGE _exit
	BAL _inc_num
	@BAL _exit

_chk_num:
	CMP R8, R9
	SUBGT R8, R8, R9
	ADDGE R10, #1
	MOVLE PC, R14
	CMP R10, #10
	SUBEQ R10, R10, #10
	B _chk_num
	
_print_digit:
	STMIA SP!, {LR}
	
	EOR R11, R11
	CMP R10, #0
	MULGT R11, R9, R10
	SUB R4, R4, R11
	EOR R11, R11

	LDR R11, =num	

	CMP R10, #0
	BLEQ _exec
	CMP R10, #1
	BLEQ _exec
	CMP R10, #2
	BLEQ _exec
	CMP R10, #3
	BLEQ _exec
	CMP R10, #4
	BLEQ _exec
	CMP R10, #5
	BLEQ _exec
	CMP R10, #6
	BLEQ _exec
	CMP R10, #7
	BLEQ _exec
	CMP R10, #8
	BLEQ _exec
	CMP R10, #9
	BLEQ _exec
	LDMDB SP!, {LR}
	MOV PC, R14
	
_exec:
	MOV R0, #1
	MOV R2, #1
	MOV R7, #4
	ADD R10, #48
	STR R10, [R11]
	LDR R1, =num
	SWI 0
	SUB R10, #48
	LDMDB SP!, {LR}
	MOV PC, R14

_exit:
	MOV R7, #1
	SWI 0
	
.data
bill:	
	.int 1000000000
cmill:
	.int 100000000
xmill:
	.int 10000000
mill:
	.int 1000000
cm:
	.int 100000
xm:
	.int 10000
m:
	.int 1000
c:
	.int 100
x:
	.int 10
i:
	.int 1

ending:
	.ascii " is Prime\n"
num:
	.ascii " "
