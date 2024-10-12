.data

msg_comprimento: .asciiz "Digite o comprimento do terreno"
msg_largura: .asciiz "Digite a largura do terreno"
msg_area: .asciiz "A área do terreno"

comprimento: .word 0
largura: .word 0
area: .word 0


.text
.globl main

main:

   li $v0, 4
   la $a0, msg_comprimento
   syscall
   li $v0, 5
   syscall
   sw $v0, comprimento
   
   li $v0, 4
   la $a0, msg_largura
   syscall
   li $v0, 5
   syscall
   sw $v0, largura
   
   lw $t0, comprimento
   lw $t1, largura
   mul $t2, $t0, $t1
   sw $t2, area
   
   li $v0, 4
   la $a0, msg_area
   syscall
   lw $a0, area
   li $v0, 1
   syscall
   
   li $v0, 10
   syscall
   