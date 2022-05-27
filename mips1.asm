.data
	
newline:	.asciiz		  "\n"
.text

	add $a0, $zero, 1
main:
	beq $a0 101 saida
	li $v0 1
	la $a1, newline 	
	syscall
	add $a0 $a0 1
	j main

saida:
	li		$v0, 10
  	syscall
