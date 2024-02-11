.data
	num1: .float 2.3
	num2: .float 4.4 #2.3
	num3: .float 5.8 #2.3
	num4: .float 9.7 # 2.3
	NotEqual12: .asciiz "num1 and num2 not equal!\n"
	NotEqual23: .asciiz "num2 and num3 not equal!\n"
	NotEqual34: .asciiz "num3 and num4 not equal!\n"
	AllEqual: .asciiz "All 4 numbers are equal!\n"
	
.text
	main:
		lwc1 $f0, num1 #load word (value of num1) in co-processor 1 register $f0
		lwc1 $f1, num2 #load word (value of num2) in co-processor 1 register $f1
		lwc1 $f2, num3 #load word (value of num3) in co-processor 1 register $f2
		lwc1 $f3, num4 #load word (value of num4) in co-processor 1 register $f3
		
		c.eq.s $f0, $f1 # Compare values in $f0 and $f1 in single precision
		bc1t Equal12 #If condition in co-processor 1 is true (they are equal), branch to Equal12
		bc1f Unequal12 #If condition in co-processor 1 is false (they are NOT equal), branch to Unequal12
	
	Equal12:
		c.eq.s $f1, $f2 # Compare values in $f1 and $f2 in single precision
		bc1t Equal23 #If condition in co-processor 1 is true (they are equal), branch to Equal23
		bc1f Unequal23 #If condition in co-processor 1 is false (they are NOT equal), branch to Unequal23
	
	Unequal12:
		li $v0, 4 #load value 4 into $v0
		la $a0, NotEqual12 #load message NotEqual12 to $a0 and print
		syscall
		li $v0, 10 #end programme
		syscall
	
	Equal23:
		c.eq.s $f2, $f3 # Compare values in $f2 and $f3 in single precision
		bc1t Equal34 #If condition in co-processor 1 is true (they are equal), branch to Equal34
		bc1f Unequal34 #If condition in co-processor 1 is false (they are NOT equal), branch to Unequal34
		
	Unequal23:
		li $v0, 4 #load value 4 into $v0
		la $a0, NotEqual23 #load message NotEqual23 to $a0 and print
		syscall
		li $v0, 10 #end programme
		syscall
		
	Equal34:
		li $v0, 4 #load value 4 into $v0
		la $a0, AllEqual #load message AllEqual to $a0 and print
		syscall
		li $v0, 10 #end programme
		syscall

	Unequal34:
		li $v0, 4 #load value 4 into $v0
		la $a0, NotEqual34 #load message NotEqual34 to $a0 and print
		syscall
		li $v0, 10 #end programme
		syscall