.data
X: .asciiz "  "

.text
	main:
		addi $t0, $zero, 1
		while:
			bgt, $t0, 10, exit # bgt means Branch if Greater Than so if value is greater than 10 in $t0, then use exit function
			jal Multiple
			addi $t0, $t0, 1 #means $t0 = $t0 + 1 meaning i++
			j while #jump back to while statement
		
		exit:
			li $v0, 10
			syscall #end the program
		
		Multiple:
			li $v0, 1
			mul $a0, $t0, 5
			syscall
			
			# li $v0, 1
			# add $a0, $a0, 0
			# syscall
			
			li $v0, 4
			la $a0, X
			syscall
			
			jr $ra
