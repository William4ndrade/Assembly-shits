.data
	
    myspace: .asciiz  "\n"

.text
	

FOR1:	
	
	add $t5 $t5 1
	beq $t5 11 SAI1 

	la $a0 myspace
	li $v0 4 
	syscall 
	
	
	
	add $a0 $t5 $zero
	li $t4 2
	mult $a0 $t4
	mflo $a0
	
	
	li $v0 1
	syscall
	

	j FOR1

SAI1:
	li $v0 10
	syscall
