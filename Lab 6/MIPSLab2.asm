.data
n1: .word 12 #store value 0x0000000c at address 0x10010000
n2: .word 67 #store value 0x00000043 at address 0x10010004
name: .asciiz "\n" #store value 0x0000000a at address 0x10010008
.text
main:
lw $t0, n1 #load value at address 0x10010000 into register $t0
lw $t1, n2 #load value at address 0x10010004 into register $t1
li $v0, 1 #load value 1 into register $v0
add $a0, $t0, $t1 #add value in registers $t0 and $t1 and store value in register $a0
syscall

li $v0,4
la $a0, name
syscall

li $v0, 1
sub $a0, $t1, $t0 #subtraxt value in registers $t0 and $t1 and store value in register $a0
syscall

li $v0,4
la $a0, name
syscall

li $v0, 1
div $a0, $t1, $t0 #division value in registers $t0 and $t1 and store value in register $a0
syscall

li $v0,4
la $a0, name
syscall

li $v0, 1
mul $a0, $t1, $t0 #multiply value in registers $t0 and $t1 and store value in register $a0
syscall