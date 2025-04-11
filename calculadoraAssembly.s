.data
    msg1: .asciiz "Menu\n1 - Somar dois números\n2 - Subtrair dois números\n3 - Multiplicar dois números\n4 - Dividir dois números\n5 - Sair\n"
    msg2: .asciiz "Digite sua opção:\n"
    msg3: .asciiz "Digite o primeiro número:\n"
    msg4: .asciiz "Digite o segundo número:\n"
    msg5: .asciiz "A soma é: "
    msg6: .asciiz "A subtração é: "
    msg7: .asciiz "A multiplicação é: "
    msg8: .asciiz "A divisão é: "
    msgInvalida: .asciiz "Opção inválida!\n"
    msgErroDiv: .asciiz "Erro: divisão por zero!\n"
    barra: .asciiz "\n"

.text
.globl main
main:
    # Exibe o menu
    li $v0, 4
    la $a0, msg1
    syscall

    # Solicita a opção
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s0, $v0   # Armazena a opção em $s0

    # Redireciona para a operação
    li $t1, 1
    li $t2, 2
    li $t3, 3
    li $t4, 4
    li $t5, 5

    beq $s0, $t1, soma
    beq $s0, $t2, subtrair
    beq $s0, $t3, multiplicar
    beq $s0, $t4, dividir
    beq $s0, $t5, sair

    j invalida

# SOMA
soma:
    jal ler_operandos

    add $t2, $t0, $t1

    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    j fim_operacao

# SUBTRAÇÃO
subtrair:
    jal ler_operandos

    sub $t2, $t0, $t1

    li $v0, 4
    la $a0, msg6
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    j fim_operacao

# MULTIPLICAÇÃO
multiplicar:
    jal ler_operandos

    mult $t0, $t1
    mflo $t2

    li $v0, 4
    la $a0, msg7
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    j fim_operacao

# DIVISÃO
dividir:
    jal ler_operandos

    beq $t1, $zero, erro_divisao

    div $t0, $t1
    mflo $t2   # Resultado da divisão

    li $v0, 4
    la $a0, msg8
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    j fim_operacao

# LEITURA DOS DOIS NÚMEROS
ler_operandos:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    jr $ra

# ERRO DE DIVISÃO POR ZERO
erro_divisao:
    li $v0, 4
    la $a0, msgErroDiv
    syscall
    j main

# OPÇÃO INVÁLIDA
invalida:
    li $v0, 4
    la $a0, msgInvalida
    syscall
    j main

# FINALIZAÇÃO DA OPERAÇÃO
fim_operacao:
    li $v0, 4
    la $a0, barra
    syscall
    j main

# SAIR
sair:
    li $v0, 10
    syscall
