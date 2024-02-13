.data
message: .asciiz "Ashnah Khalid Khan 22889\n"
prompt: .asciiz "What is your age?\n"
prompt2: .asciiz "Enter integer\n"
equalmessage: .asciiz "They are equal\n"

.text
main:
jal Q1 #jump and link function Q1
syscall

addi $a1, $zero, 1 #add 1 and 0 and store value into $a1
addi $a2, $zero, 2 #add 2 and 0 and store value into $a2
jal Q2 # jump and link function Q1
li $v0, 1 #load value 1 into register $v0
la $a0, $v1, 0 # add value in register $v1 and 0 and store in register $a0 and print
syscall

li $v0, 4 #load value 4 into register $v0
la $a0, prompt # load promt from memory to register $a0 and print
syscall
li $v0, 5 #load value 5 into register $v0
syscall
move $t0, $v0  #move value in register $v0 to $t0
li $v0, 1 #load value 1 into register $v0
move $a0, $t0 #move value in register $t0 to $a0 and print
syscall

li $v0, 4 #load value 4 into register $v0
la $a0, prompt2 # load prompt2 from memory to register $a0 and print
syscall
li $v0, 5 #load value 5 into register $v0
syscall
move $t0, $v0 #move value in register $v0 to $t0
li $v0, 4 #load value 4 into register $v0
la $a0, prompt2 # load prompt2 from memory to register $a0 and print
syscall
li $v0, 5 #load value 5 into register $v0
syscall
move $t1, $v0 #move value in register $v0 to $t1
beq $t0, $t1, Q4 #if values in register $t1 and $t0 are equal, link to function Q4

li $v0, 10 #load value 10 into register $v0 and end program
syscall

Q1:
li $v0, 4 # load value 4 into register $v0
la $a0, message # load message from memory to register $a0 and print
syscall
jr $ra # jump back to main

Q2:
add $v1, $a1, $a2 #add values in $a1 and $a2 and store in register $v1
jr $ra  # jump back to main

Q4:
li $v0, 4 #load value 4 into register $v0
la $a0, equalmessage #load equalmessage from memory to register $a0 and print
syscall
