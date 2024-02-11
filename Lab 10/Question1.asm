.data
	array: .space 12 # storing 4 numbers and integer is 4 bytes so 4*4 is 12 bytes
	msg: .asciiz "\nInput integer value: "
	even: .asciiz "\nSum is even"
	odd: .asciiz "\nSum is odd"
	FinalSum: .asciiz "\nFinal Sum: "

.text
	addi $t0, $zero, 0 
	li $v0, 4
	la $a0, msg #Prompt for input
	syscall
	li $v0, 5 #Get input
	syscall
	addi $s0, $v0, 0 #Move input to register $s0
	sw $s0, array($t0) #Store value in $s0 at index $t0 of array
	
	addi $t0, $t0, 4 #t0 = t0 + 4 (cause intgerer is 4 bytes)
	li $v0, 4
	la $a0, msg #Prompt for input
	syscall
	li $v0, 5 #Get input
	syscall
	addi $s1, $v0, 0 #Move input to register $s0
	sw $s1, array($t0) #Store value in $s0 at index $t0 of array
	
	addi $t0, $t0, 4 #t0 = t0 + 4 (cause intgerer is 4 bytes)
	li $v0, 4
	la $a0, msg #Prompt for input
	syscall
	li $v0, 5 #Get input
	syscall
	addi $s2, $v0, 0 #Move input to register $s0
	sw $s2, array($t0) #Store value in $s0 at index $t0 of array
	
	addi $t0, $t0, 4 #t0 = t0 + 4 (cause intgerer is 4 bytes)
	li $v0, 4
	la $a0, msg #Prompt for input
	syscall
	li $v0, 5 #Get input
	syscall
	addi $s3, $v0, 0 #Move input to register $s0
	sw $s3, array($t0) #Store value in $s0 at index $t0 of array
	
	addi $t1, $zero, 0
	while:
		bgt $t1, 12, exit
		
		#jal Sum
		
		lw $t2, array($t1)
		add $t3, $t3, $t2
		addi $t6, $zero, 16
		move $s6, $t3
		sw $s6, array($t6)
		
		addi $t1, $t1, 4 # $t1 = $t1 + 4 ==== index of array whose values we are loading
		
		j while
	
	#EvenOdd:
	#	lw $t2, array($t1) # load word loads value at index $t1 in array into $t2
	#	addi $t5, $zero, 2
	#	div $t2, $t5 #value in $t2 divided by value in $t5
	#	mfhi $t4
		
	#	li $v0, 1
	#	add $a0, $t2, $zero
	#	syscall
		
	#	li $v0, 4
	#	la $a0, evenodd
	#	syscall
		
	#	li $v0, 1
	#	addi $a0, $t4, 0
	#	syscall
		
	#	jr $ra
		
	#	jal isEven
		
	#	lw $t2, array($t1)
	#	li $v0, 1
	#	addi $a0, $t2, 0
	#	syscall
		
	#	jal isOdd
		
	#	jr $ra
		
	isEven:
		li $v0, 4
		la $a0, even
		syscall
		
		li $v0, 10
		syscall
		
	#	jr $ra
	isOdd:
		li $v0, 4
		la $a0, odd
		syscall
	
		li $v0, 10
		syscall
		
	#	jr $ra
	exit:
		li $v0, 4
		la $a0, FinalSum
		syscall
		
		addi $t6, $zero, 16
		lw $t6, array($t6)
		li $v0, 1
		addi $a0, $t6, 0
		syscall
		
		
		addi $t5, $zero, 2
		div $t6, $t5 #value in $t2 divided by value in $t5
		mfhi $t4
		bnez $t4, isOdd
		beqz $t4, isEven
		
		li $v0, 10
		syscall #end the program
