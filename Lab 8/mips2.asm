.data
array: .space 24 # 10 to 15 is 6 numbers and integer is 4 bytes so 6*4 is 24 bytes
X: .asciiz "  "

.text
	addi $s0, $zero, 10 #putting values I need to store in array into $s registers
	addi $s1, $zero, 11
	addi $s2, $zero, 12
	addi $s3, $zero, 13
	addi $s4, $zero, 14
	addi $s5, $zero, 15
	
	addi $t0, $zero, 0 #$t0 = 0 so store value in $s0 at index 0 of array
	sw $s0, array($t0)
	
	addi $t0, $t0, 4 #increment by 4 becuz integer is 4 bytes of memory
	sw $s1, array($t0) #$t0 = 4 so store value in $s1 at index 4 of array
	
	addi $t0, $t0, 4
	sw $s2, array($t0) #$t0 = 8, $s2 = 12, array(8) = 12
	
	addi $t0, $t0, 4
	sw $s3, array($t0) #$t0 = 12, $s2 = 13, array(12) = 13
	
	addi $t0, $t0, 4
	sw $s4, array($t0) #$t0 = 16, $s2 = 14, array(16) = 14
	
	addi $t0, $t0, 4
	sw $s5, array($t0) #$t0 = 20, $s2 = 15, array(20) = 15
	
	addi $t0, $zero, 0
	
	while:
		bgt $t0, 5, exit
		jal print
		addi $t0, $t0, 1 # $t1 = $t1 + 1 ==== number of times loop is run
		addi $t1, $t1, 4 # $t1 = $t1 + 4 ==== index of array whose values we are loading
		j while
		
	exit:
		li $v0, 10
		syscall #end the program
	
	print:
		lw $t6, array($t1) # load word loads valued at index $t1 in array into $t6
		li $v0, 1
		addi $a0, $t6, 0
		syscall
		
		li $v0, 4
		la $a0, X
		syscall
		jr $ra
