.data
	
.text
	addi $t1, $t1, 1	
	addi $t0, $zero, 1
	
	while:
		bgt $t0, 10, exit
		mul $t1, $t1, $t0
		addi $t0, $t0, 1 # $t1 = $t1 + 1 ==== number of times loop is run
		j while
		
	exit:
		li $v0, 1
		addi $a0, $t1, 0
		syscall
		
		li $v0, 10
		syscall #end the program
		jr $ra
		
