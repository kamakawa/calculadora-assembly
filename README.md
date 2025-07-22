# Calculadora em Assembly MIPS

Este repositório apresenta uma **calculadora básica implementada em Assembly MIPS**, projetada para realizar as quatro operações aritméticas fundamentais: soma, subtração, multiplicação e divisão.

**Feito durante meu 3º período da faculdade**, este projeto pessoal surgiu da ideia de refazer um clássico. Enquanto muitas pessoas no início da programação criam a famosa calculadora em linguagens de alto nível, eu decidi levar esse desafio para um nível mais fundamental, implementando-a em **Assembly MIPS**. Isso me permitiu aprofundar minha compreensão sobre como os programas interagem diretamente com a arquitetura de computadores, a gestão de registradores e a construção de lógica computacional sem abstrações. É uma prova da minha dedicação em entender os alicerces da computação.

---

## 🚀 Funcionalidades

* **Menu Interativo:** Oferece opções claras para o usuário selecionar a operação desejada.
* **Soma, Subtração, Multiplicação:** Realiza operações aritméticas básicas com dois números inteiros.
* **Divisão Segura:** Inclui tratamento para evitar divisão por zero, exibindo uma mensagem de erro apropriada.
* **Reuso de Código:** Utiliza sub-rotinas para ler operandos, otimizando o código e demonstrando modularidade.
* **Controle de Fluxo:** Implementa saltos condicionais e incondicionais para gerenciar a lógica do programa.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem de Programação:** Assembly MIPS (RISC)
* **Simulador/Ambiente:** Compatível com simuladores MIPS como o **QtSpim** ou **MARS**.

---

## Como Compilar e Executar

Para executar este projeto, você precisará de um simulador de arquitetura MIPS. Recomenda-se o **QtSpim** ou **MARS**.

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/Calculadora-MIPS-Assembly.git](https://github.com/seu-usuario/Calculadora-MIPS-Assembly.git)
    cd Calculadora-MIPS-Assembly
    ```
    *(Lembre-se de substituir `seu-usuario` pelo seu username no GitHub)*

2.  **Abra o arquivo:**
    * Abra o arquivo `main.asm` (ou o nome que você der ao seu arquivo `.s` ou `.asm`) no simulador MIPS de sua escolha.

3.  **Carregue e Execute:**
    * Carregue o arquivo no simulador e execute o programa. A interação acontecerá na janela de console do simulador.

---

## 🧠 Conceitos e Habilidades Demonstradas

Este projeto é uma excelente demonstração de conhecimento em:

* **Arquitetura MIPS:** Familiaridade com o conjunto de instruções MIPS (ISA) e organização de registradores.
* **Programação de Baixo Nível:** Capacidade de programar diretamente a CPU, controlando o hardware em um nível fundamental.
* **Controle de Fluxo:** Implementação de loops, condicionais e chamadas de sub-rotinas (jumps e branches).
* **Gerenciamento de Registradores:** Uso eficiente de registradores para armazenamento e manipulação de dados.
* **Chamadas de Sistema (Syscalls):** Interação com o sistema operacional para entrada/saída de dados (leitura de inteiros, exibição de strings e inteiros).
* **Tratamento Básico de Erros:** Resposta a condições inesperadas como divisão por zero.

---

## 💡 Próximos Passos (Melhorias Potenciais)

* **Validação de Entrada:** Implementar validação mais robusta para garantir que o usuário insira apenas opções válidas no menu e números inteiros.
* **Operações Adicionais:** Expandir a funcionalidade com operações como módulo, potência, ou operações com números de ponto flutuante.
* **Estrutura de Loop Explícita:** Refatorar o loop principal da `main` para uma estrutura de controle mais explícita (e.g., um loop `while` ou `do-while` em Assembly).
* **Modularidade Avançada:** Explorar o uso da pilha para passar parâmetros entre sub-rotinas de forma mais formal.

---

## Contato

* **Eric Kamakawa** - [erickamakawa@hotmail.com](mailto:erickamakawa@hotmail.com)
* **LinkedIn:** [linkedin.com/in/erickamakawa](https://www.linkedin.com/in/erickamakawa)
* **GitHub:** [github.com/kamakawa](https://github.com/kamakawa)

---
