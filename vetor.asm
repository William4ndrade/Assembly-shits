.data
	
	arr: .space 40
	
.text
	
Main:


	jal Func1
	li $v0 10
	syscall
	
	
	
Func1:
	add $t5 $zero $zero
	la $t1 arr
	For1:
		
	
	   beq $t5 10 SaiFor1
	   add $t5 $t5 1 
	   sw  $t5  0($t1)
	   add $t1 $t1 4
	
	   j For1
	
	SaiFor1:
		jr $ra
	

