.data
name: .asciiz "Ashnah Khalid Khan\n"
la $t0,22889
.text
main:
li $v0,4
la $a0, name
syscall

li $v0,1
add $a0, $t0, 22889
syscall

li $v0, 10
syscall
