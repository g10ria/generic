	.text
	.globl main
_macros:
	.macro println()
	la $a0 newline
	li $v0 4
	syscall
	.end_macro
main:
	li $v0 9
	li $a0 28
	syscall
	li $t0 23
	sw $t0 ($v0)
	li $t0 'N'
	sb $t0 4($v0)
	li $t0 'o'
	sb $t0 5($v0)
	li $t0 'w'
	sb $t0 6($v0)
	li $t0 ' '
	sb $t0 7($v0)
	li $t0 't'
	sb $t0 8($v0)
	li $t0 'e'
	sb $t0 9($v0)
	li $t0 's'
	sb $t0 10($v0)
	li $t0 't'
	sb $t0 11($v0)
	li $t0 'i'
	sb $t0 12($v0)
	li $t0 'n'
	sb $t0 13($v0)
	li $t0 'g'
	sb $t0 14($v0)
	li $t0 ' '
	sb $t0 15($v0)
	li $t0 '#'
	sb $t0 16($v0)
	li $t0 'i'
	sb $t0 17($v0)
	li $t0 'n'
	sb $t0 18($v0)
	li $t0 'c'
	sb $t0 19($v0)
	li $t0 'l'
	sb $t0 20($v0)
	li $t0 'u'
	sb $t0 21($v0)
	li $t0 'd'
	sb $t0 22($v0)
	li $t0 'e'
	sb $t0 23($v0)
	li $t0 '.'
	sb $t0 24($v0)
	li $t0 '.'
	sb $t0 25($v0)
	li $t0 '.'
	sb $t0 26($v0)
	li $t0 ' '
	sb $t0 27($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 51
	syscall
	li $t0 46
	sw $t0 ($v0)
	li $t0 'E'
	sb $t0 4($v0)
	li $t0 'n'
	sb $t0 5($v0)
	li $t0 't'
	sb $t0 6($v0)
	li $t0 'e'
	sb $t0 7($v0)
	li $t0 'r'
	sb $t0 8($v0)
	li $t0 ' '
	sb $t0 9($v0)
	li $t0 'a'
	sb $t0 10($v0)
	li $t0 ' '
	sb $t0 11($v0)
	li $t0 'n'
	sb $t0 12($v0)
	li $t0 'u'
	sb $t0 13($v0)
	li $t0 'm'
	sb $t0 14($v0)
	li $t0 'b'
	sb $t0 15($v0)
	li $t0 'e'
	sb $t0 16($v0)
	li $t0 'r'
	sb $t0 17($v0)
	li $t0 ' '
	sb $t0 18($v0)
	li $t0 'a'
	sb $t0 19($v0)
	li $t0 'n'
	sb $t0 20($v0)
	li $t0 'd'
	sb $t0 21($v0)
	li $t0 ' '
	sb $t0 22($v0)
	li $t0 'I'
	sb $t0 23($v0)
	li $t0 '\''
	sb $t0 24($v0)
	li $t0 'l'
	sb $t0 25($v0)
	li $t0 'l'
	sb $t0 26($v0)
	li $t0 ' '
	sb $t0 27($v0)
	li $t0 't'
	sb $t0 28($v0)
	li $t0 'e'
	sb $t0 29($v0)
	li $t0 'l'
	sb $t0 30($v0)
	li $t0 'l'
	sb $t0 31($v0)
	li $t0 ' '
	sb $t0 32($v0)
	li $t0 'y'
	sb $t0 33($v0)
	li $t0 'o'
	sb $t0 34($v0)
	li $t0 'u'
	sb $t0 35($v0)
	li $t0 ' '
	sb $t0 36($v0)
	li $t0 'i'
	sb $t0 37($v0)
	li $t0 'f'
	sb $t0 38($v0)
	li $t0 ' '
	sb $t0 39($v0)
	li $t0 'i'
	sb $t0 40($v0)
	li $t0 't'
	sb $t0 41($v0)
	li $t0 '\''
	sb $t0 42($v0)
	li $t0 's'
	sb $t0 43($v0)
	li $t0 ' '
	sb $t0 44($v0)
	li $t0 'e'
	sb $t0 45($v0)
	li $t0 'v'
	sb $t0 46($v0)
	li $t0 'e'
	sb $t0 47($v0)
	li $t0 'n'
	sb $t0 48($v0)
	li $t0 '!'
	sb $t0 49($v0)
	li $t0 ' '
	sb $t0 50($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	j _endisEven
isEven:
	li $v0 0
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	subu $sp $sp 4 # Pushing return address
	sw $ra ($sp)
	# Compiling BinOp components
	# Compiling BinOp components
	lw $v0 8($sp) # Getting local variable num
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	li $v0 2
	lw $t0 ($sp) # Popping $t0
	addu $sp $sp 4
	# Beginning BinOp compilation
	divu $v0 $t0
	mfhi $v0
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	li $v0 0
	lw $t0 ($sp) # Popping $t0
	addu $sp $sp 4
	# Beginning BinOp compilation
	jal _E
	sw $v0 4($sp)
	lw $ra 0($sp)
	lw $v0 4($sp)
	# Clearing parameters/local variables and return address from stack
	lw $a0 ($sp) # Popping $a0
	addu $sp $sp 4
	lw $a0 ($sp) # Popping $a0
	addu $sp $sp 4
	lw $a0 ($sp) # Popping $a0
	addu $sp $sp 4
	jr $ra
_endisEven:
	li $v0 5
	syscall
	sw $v0 _data_includeTest
	lw $v0 _data_includeTest# Getting global variable includeTest
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	jal isEven
	move $a0 $v0
	li $v0 1
	syscall
	println()
	lw $v0 _data_includeTest# Getting global variable includeTest
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	jal isEven
	beq $v0 0 _0
	li $v0 9
	li $a0 26
	syscall
	li $t0 21
	sw $t0 ($v0)
	li $t0 'Y'
	sb $t0 4($v0)
	li $t0 'o'
	sb $t0 5($v0)
	li $t0 'u'
	sb $t0 6($v0)
	li $t0 'r'
	sb $t0 7($v0)
	li $t0 ' '
	sb $t0 8($v0)
	li $t0 'n'
	sb $t0 9($v0)
	li $t0 'u'
	sb $t0 10($v0)
	li $t0 'm'
	sb $t0 11($v0)
	li $t0 'b'
	sb $t0 12($v0)
	li $t0 'e'
	sb $t0 13($v0)
	li $t0 'r'
	sb $t0 14($v0)
	li $t0 ' '
	sb $t0 15($v0)
	li $t0 'w'
	sb $t0 16($v0)
	li $t0 'a'
	sb $t0 17($v0)
	li $t0 's'
	sb $t0 18($v0)
	li $t0 ' '
	sb $t0 19($v0)
	li $t0 'e'
	sb $t0 20($v0)
	li $t0 'v'
	sb $t0 21($v0)
	li $t0 'e'
	sb $t0 22($v0)
	li $t0 'n'
	sb $t0 23($v0)
	li $t0 '!'
	sb $t0 24($v0)
	li $t0 ' '
	sb $t0 25($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
_0:
	lw $v0 _data_includeTest# Getting global variable includeTest
	subu $sp $sp 4 # Pushing $v0
	sw $v0 ($sp)
	jal isEven
	nor $v0 $v0 $v0
	beq $v0 0 _1
	li $v0 9
	li $a0 32
	syscall
	li $t0 27
	sw $t0 ($v0)
	li $t0 'Y'
	sb $t0 4($v0)
	li $t0 'o'
	sb $t0 5($v0)
	li $t0 'u'
	sb $t0 6($v0)
	li $t0 'r'
	sb $t0 7($v0)
	li $t0 ' '
	sb $t0 8($v0)
	li $t0 'n'
	sb $t0 9($v0)
	li $t0 'u'
	sb $t0 10($v0)
	li $t0 'm'
	sb $t0 11($v0)
	li $t0 'b'
	sb $t0 12($v0)
	li $t0 'e'
	sb $t0 13($v0)
	li $t0 'r'
	sb $t0 14($v0)
	li $t0 ' '
	sb $t0 15($v0)
	li $t0 'w'
	sb $t0 16($v0)
	li $t0 'a'
	sb $t0 17($v0)
	li $t0 's'
	sb $t0 18($v0)
	li $t0 ' '
	sb $t0 19($v0)
	li $t0 'n'
	sb $t0 20($v0)
	li $t0 'o'
	sb $t0 21($v0)
	li $t0 't'
	sb $t0 22($v0)
	li $t0 ' '
	sb $t0 23($v0)
	li $t0 'e'
	sb $t0 24($v0)
	li $t0 'v'
	sb $t0 25($v0)
	li $t0 'e'
	sb $t0 26($v0)
	li $t0 'n'
	sb $t0 27($v0)
	li $t0 '.'
	sb $t0 28($v0)
	li $t0 '.'
	sb $t0 29($v0)
	li $t0 '.'
	sb $t0 30($v0)
	li $t0 ' '
	sb $t0 31($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
_1:
	li $v0 9
	li $a0 5
	syscall
	li $t0 0
	sw $t0 ($v0)
	li $t0 ' '
	sb $t0 4($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 26
	syscall
	li $t0 21
	sw $t0 ($v0)
	li $t0 'N'
	sb $t0 4($v0)
	li $t0 'o'
	sb $t0 5($v0)
	li $t0 'w'
	sb $t0 6($v0)
	li $t0 ' '
	sb $t0 7($v0)
	li $t0 't'
	sb $t0 8($v0)
	li $t0 'e'
	sb $t0 9($v0)
	li $t0 's'
	sb $t0 10($v0)
	li $t0 't'
	sb $t0 11($v0)
	li $t0 'i'
	sb $t0 12($v0)
	li $t0 'n'
	sb $t0 13($v0)
	li $t0 'g'
	sb $t0 14($v0)
	li $t0 ' '
	sb $t0 15($v0)
	li $t0 'm'
	sb $t0 16($v0)
	li $t0 'a'
	sb $t0 17($v0)
	li $t0 'c'
	sb $t0 18($v0)
	li $t0 'r'
	sb $t0 19($v0)
	li $t0 'o'
	sb $t0 20($v0)
	li $t0 's'
	sb $t0 21($v0)
	li $t0 '.'
	sb $t0 22($v0)
	li $t0 '.'
	sb $t0 23($v0)
	li $t0 '.'
	sb $t0 24($v0)
	li $t0 ' '
	sb $t0 25($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 13
	syscall
	li $t0 8
	sw $t0 ($v0)
	li $t0 'S'
	sb $t0 4($v0)
	li $t0 'u'
	sb $t0 5($v0)
	li $t0 'c'
	sb $t0 6($v0)
	li $t0 'c'
	sb $t0 7($v0)
	li $t0 'e'
	sb $t0 8($v0)
	li $t0 's'
	sb $t0 9($v0)
	li $t0 's'
	sb $t0 10($v0)
	li $t0 '!'
	sb $t0 11($v0)
	li $t0 ' '
	sb $t0 12($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 5
	syscall
	li $t0 0
	sw $t0 ($v0)
	li $t0 ' '
	sb $t0 4($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 32
	syscall
	li $t0 27
	sw $t0 ($v0)
	li $t0 'N'
	sb $t0 4($v0)
	li $t0 'o'
	sb $t0 5($v0)
	li $t0 'w'
	sb $t0 6($v0)
	li $t0 ' '
	sb $t0 7($v0)
	li $t0 't'
	sb $t0 8($v0)
	li $t0 'e'
	sb $t0 9($v0)
	li $t0 's'
	sb $t0 10($v0)
	li $t0 't'
	sb $t0 11($v0)
	li $t0 'i'
	sb $t0 12($v0)
	li $t0 'n'
	sb $t0 13($v0)
	li $t0 'g'
	sb $t0 14($v0)
	li $t0 ' '
	sb $t0 15($v0)
	li $t0 '#'
	sb $t0 16($v0)
	li $t0 'r'
	sb $t0 17($v0)
	li $t0 'e'
	sb $t0 18($v0)
	li $t0 'q'
	sb $t0 19($v0)
	li $t0 'u'
	sb $t0 20($v0)
	li $t0 'e'
	sb $t0 21($v0)
	li $t0 's'
	sb $t0 22($v0)
	li $t0 't'
	sb $t0 23($v0)
	li $t0 'F'
	sb $t0 24($v0)
	li $t0 'i'
	sb $t0 25($v0)
	li $t0 'l'
	sb $t0 26($v0)
	li $t0 'e'
	sb $t0 27($v0)
	li $t0 '.'
	sb $t0 28($v0)
	li $t0 '.'
	sb $t0 29($v0)
	li $t0 '.'
	sb $t0 30($v0)
	li $t0 ' '
	sb $t0 31($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 9
	li $a0 29
	syscall
	li $t0 24
	sw $t0 ($v0)
	li $t0 'H'
	sb $t0 4($v0)
	li $t0 'e'
	sb $t0 5($v0)
	li $t0 'l'
	sb $t0 6($v0)
	li $t0 'l'
	sb $t0 7($v0)
	li $t0 'o'
	sb $t0 8($v0)
	li $t0 ' '
	sb $t0 9($v0)
	li $t0 'f'
	sb $t0 10($v0)
	li $t0 'r'
	sb $t0 11($v0)
	li $t0 'o'
	sb $t0 12($v0)
	li $t0 'm'
	sb $t0 13($v0)
	li $t0 ' '
	sb $t0 14($v0)
	li $t0 't'
	sb $t0 15($v0)
	li $t0 'h'
	sb $t0 16($v0)
	li $t0 'e'
	sb $t0 17($v0)
	li $t0 ' '
	sb $t0 18($v0)
	li $t0 'i'
	sb $t0 19($v0)
	li $t0 'n'
	sb $t0 20($v0)
	li $t0 't'
	sb $t0 21($v0)
	li $t0 'e'
	sb $t0 22($v0)
	li $t0 'r'
	sb $t0 23($v0)
	li $t0 'n'
	sb $t0 24($v0)
	li $t0 'e'
	sb $t0 25($v0)
	li $t0 't'
	sb $t0 26($v0)
	li $t0 '!'
	sb $t0 27($v0)
	li $t0 ' '
	sb $t0 28($v0)
	move $a0 $v0
	addu $a0 $a0 4
	li $v0 4
	syscall
	println()
	li $v0 10
	syscall
_TRUE:
	li $v0 1
	jr $ra
_FALSE:
	li $v0 0
	jr $ra
_LEQ:
	ble $t0 $v0 _TRUE
	j _FALSE
_LT:
	blt $t0 $v0 _TRUE
	j _FALSE
_GEQ:
	bge $t0 $v0 _TRUE
	j _FALSE
_GT:
	bgt $t0 $v0 _TRUE
	j _FALSE
_E:
	beq $t0 $v0 _TRUE
	j _FALSE
_NE:
	bne $t0 $v0 _TRUE
	j _FALSE
	.data
	_data_includeTest: .word 0
	newline: .asciiz "\n"
