.data 
	arr: .space 40
	
	
.macro PUSH

	sw $ra 0($sp)
	sw $t1 -4($sp)
	add $sp $sp -8
.end_macro

.macro PrintInteger(%r)
	add $a0 %r $zero
	li $v0 1
	syscall
.end_macro

.macro POP
	add $sp $sp 8
	lw $ra 0($sp)
	lw $t1 -4($sp)
.end_macro
	
	
.text 

Main:
	la $t1 arr
	jal Function
	li $v0 10
	syscall
	
	

PreencherArray:
	
	add $t9 $zero $zero
	add $t8 $t1 $zero
	For2:
	    beq $t9 11 SaiFor2
	    sw $t9 0($t8)
	    add $t8 $t8 4
	    PrintInteger($t9)
	   add $t9 $t9 1
	   j For2
	SaiFor2:
	    jr $ra


Function:
	PUSH
	add $t2 $zero $t1
	add $t3 $zero $zero
	jal PreencherArray
	
	POP
	jr $ra