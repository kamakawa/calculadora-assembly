# 🧮 Calculadora em Assembly MIPS

> "Enquanto muitos iniciam suas jornadas com calculadoras em linguagens de alto nível, resolvi fazer diferente:
> criei uma calculadora em Assembly MIPS para aprofundar meu entendimento da arquitetura e das operações de baixo nível."

## 📌 Descrição

Este projeto consiste em uma calculadora interativa desenvolvida em Assembly MIPS, com foco educacional. A ideia foi explorar os fundamentos da 
linguagem Assembly e o funcionamento interno de operações aritméticas básicas, utilizando chamadas de sistema (`syscall`) para entrada e saída.

## ⚙️ Funcionalidades

- [x] Soma de dois números
- [x] Subtração
- [x] Multiplicação
- [x] Divisão com tratamento de erro (divisão por zero)
- [x] Validação de opção inválida
- [x] Menu interativo com loop contínuo até o usuário escolher sair

## 🎯 Objetivos do Projeto

- Praticar e reforçar os conceitos da linguagem Assembly (MIPS)
- Compreender melhor a interação entre software e hardware por meio de instruções de máquina
- Exercitar modularização com sub-rotinas (`jal`, `jr`)
- Desenvolver um menu dinâmico com uso de condições e saltos

## 💻 Como Executar

Você pode testar este código online usando o [MIPS Playground](https://www.mipsplayground.com):

1. Acesse o link: [https://www.mipsplayground.com](https://www.mipsplayground.com)
2. Cole o conteúdo do arquivo `.asm` no editor.
3. Clique em **"Assemble & Run"**.
4. Interaja com o menu que aparece no console.

Ou, se preferir, utilize qualquer outro simulador MIPS compatível com `syscall`.

## 🛠 Estrutura do Código

- **Menu principal** com opções de operação
- **Sub-rotinas reutilizáveis** para leitura de operandos
- Uso de **registradores temporários** e **salvos**
- **Tratamento de exceções**, como divisão por zero
- Loop contínuo até o usuário escolher sair

## 📚 Aprendizados

Desenvolver este projeto proporcionou um entendimento mais profundo de como operações simples que usamos diariamente em linguagens 
modernas são implementadas diretamente na arquitetura do processador. Além disso, permitiu a prática de lógica e controle de fluxo em baixo nível.

---

🧠 **Desafio Concluído:** Criar uma calculadora funcional, interativa e modular em Assembly MIPS.

