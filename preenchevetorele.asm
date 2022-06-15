
.macro NewLinha

	la $a0 newLine
	li $v0 4
	syscall
	
.end_macro

.data 
	arr: .space 40	
	x: .word 4
	max: .word 100
	newLine: .asciiz "\n"

	
.text


	
	la $t1 arr
	jal Func1
	jal Func2
	li $v0 10
	syscall
	
	
	
Func2:
	add $t4 $zero $zero
	add $t9 $t1 $zero
	For2:
	    beq $t4 11 Sai2
	    	
	    lw $t5 0($t9)
	    add $a0 $t5 $zero
	    li $v0 1
	    syscall
	    
	    NewLinha						
	    add $t9 $t9 4
	    add $t4 $t4 1
	    j For2
	Sai2:
	    jr $ra
	




Func1: 
     add $t5 $zero $zero
     add $t9 $t1 $zero
     
     For1:
     	beq $t5 11 SaiFor1
     	
     	li $t3 10
     	mult $t5 $t3
     	mflo $t8
     	 
     	
     	sw $t8 0($t9)
     	add $t9 $t9 4
     	
     	
     	add $t5 $t5 1
     	j For1
     
    SaiFor1:
    	jr $ra









