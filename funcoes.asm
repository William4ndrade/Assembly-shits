.data
     newLine: .asciiz "Essa aqui é uma nova linha\n"


.macro newLine
	
	la $a0 newLine
	li $v0 4
	syscall
	
.end_macro

.macro PUSH
	sw $ra 0($sp)
	add $sp, $sp, -4
	

.end_macro


.macro POP 
	add $sp $sp 4
	lw $ra 0($sp)

.end_macro 

  		
.text
     
Main: 
     
     li $t5 10
     li $t6 100
     li $t7 8
     jal Func1
     li $v0 10
     syscall
     
     
     
Func1:
 	PUSH
 	
 	jal Func2
 	
 	
 	POP
 	jr $ra
Func2:

	newLine
	newLine
	newLine
	newLine
	jr $ra

