.data
	msg: .asciiz "Please input integer to calculate factorial for: "
	answer: .asciiz "\nFactorial value: "
.text
	li $v0, 4
	la $a0, msg #Print msg
	syscall

	li $v0, 5 #Get in[ut N for factorial
	syscall
	
	move $t2, $v0 #Put N into $t2
	
	addi $t1, $t1, 1	
	addi $t0, $zero, 1
	
	while:
		bgt $t0, $t2, PrintFactorial #if $t0 value is greater than $t2 value then call 'exit' function
		mul $t1, $t1, $t0
		addi $t0, $t0, 1 # $t1 = $t1 + 1 ==== number of times loop is run
		j while
		
	PrintFactorial:
		li $v0, 1
		addi $a0, $t1, 0
		syscall
		
		li $v0, 10
		syscall #end the program
		jr $ra
		
