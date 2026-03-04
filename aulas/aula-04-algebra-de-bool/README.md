# Álgebra de Bool

> "Toda decisão que o computador toma se resume a verdadeiro ou falso — e isso é Álgebra de Bool."

📊 **[Abrir apresentação de slides](./slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é Álgebra de Bool?

A **Álgebra de Bool** (ou Álgebra Booleana) é um sistema matemático criado pelo matemático britânico **George Boole** (1815–1864). Diferente da álgebra comum que trabalha com infinitos números, a álgebra booleana trabalha com apenas **dois valores**:

| Valor      | Símbolo | Significado             |
| ---------- | ------- | ----------------------- |
| Verdadeiro | `1`     | sim, ligado, ativo, on  |
| Falso      | `0`     | não, desligado, inativo |

Em Portugol Studio, esses valores são representados pelas palavras `verdadeiro` e `falso`.

```portugol
logico lampada = verdadeiro   // 1 — ligada
logico porta = falso          // 0 — fechada
```

> **Por que isso importa?** Todo circuito eletrônico, todo processador e todo software opera com esses dois estados. Compreender a Álgebra de Bool é compreender como o computador pensa.

---

## 2. Variável Lógica (`logico`)

Uma **variável lógica** (booleana) é uma variável que só pode armazenar `verdadeiro` ou `falso`.

```portugol
logico aprovado = verdadeiro
logico reprovado = falso
logico estaLogado = verdadeiro
logico contaAtiva = falso
```

Variáveis lógicas são geralmente resultados de comparações:

```portugol
inteiro nota = 8
logico passou = (nota >= 7)   // verdadeiro, porque 8 >= 7

inteiro idade = 15
logico ehMaior = (idade >= 18)  // falso, porque 15 < 18
```

---

## 3. Os 3 Operadores Principais

A Álgebra de Bool tem três operações fundamentais. Em Portugol, são representadas pelas palavras `e`, `ou` e `nao`.

| Operador       | Palavra em Portugol | Símbolo Matemático | Equivalente em Inglês |
| -------------- | ------------------- | ------------------ | --------------------- |
| E (Conjunção)  | `e`                 | ∧                  | AND                   |
| OU (Disjunção) | `ou`                | ∨                  | OR                    |
| NÃO (Negação)  | `nao`               | ¬                  | NOT                   |

---

## 4. Operador `e` — AND (Conjunção)

O operador `e` retorna `verdadeiro` **somente quando todos os operandos são `verdadeiro`**.

### Tabela-verdade do AND

| A          | B          | A `e` B        |
| ---------- | ---------- | -------------- |
| verdadeiro | verdadeiro | **verdadeiro** |
| verdadeiro | falso      | falso          |
| falso      | verdadeiro | falso          |
| falso      | falso      | falso          |

### Analogia: porta com dois cadeados

Imagine uma porta com **dois cadeados**. Ela só abre quando as **duas chaves** são giradas ao mesmo tempo.

```
Cadeado A: aberto ✓   Cadeado B: aberto ✓   → PORTA ABERTA (verdadeiro)
Cadeado A: aberto ✓   Cadeado B: fechado ✗  → PORTA FECHADA (falso)
Cadeado A: fechado ✗  Cadeado B: aberto ✓   → PORTA FECHADA (falso)
Cadeado A: fechado ✗  Cadeado B: fechado ✗  → PORTA FECHADA (falso)
```

### Exemplo em código

```portugol
logico temCarteira = verdadeiro
inteiro idade = 19

logico podeDirigir = (idade >= 18) e temCarteira
// (19 >= 18) e verdadeiro
// verdadeiro e verdadeiro
// = verdadeiro

escreva(podeDirigir)  // verdadeiro
```

---

## 5. Operador `ou` — OR (Disjunção)

O operador `ou` retorna `verdadeiro` **quando pelo menos um dos operandos é `verdadeiro`**.

### Tabela-verdade do OR

| A          | B          | A `ou` B       |
| ---------- | ---------- | -------------- |
| verdadeiro | verdadeiro | **verdadeiro** |
| verdadeiro | falso      | **verdadeiro** |
| falso      | verdadeiro | **verdadeiro** |
| falso      | falso      | falso          |

### Analogia: dois interruptores em paralelo

Imagine dois interruptores controlando uma mesma lâmpada. A lâmpada acende se **pelo menos um** dos interruptores estiver ligado.

```
Interruptor A: ON ✓   Interruptor B: OFF ✗  → LÂMPADA ACESA (verdadeiro)
Interruptor A: OFF ✗  Interruptor B: OFF ✗  → LÂMPADA APAGADA (falso)
```

### Exemplo em código

```portugol
inteiro idade = 10

logico temDesconto = (idade < 12) ou (idade > 60)
// verdadeiro ou falso
// = verdadeiro

escreva(temDesconto)  // verdadeiro (é criança, tem desconto)
```

---

## 6. Operador `nao` — NOT (Negação)

O operador `nao` **inverte** o valor lógico. `verdadeiro` vira `falso` e vice-versa.

### Tabela-verdade do NOT

| A          | `nao` A        |
| ---------- | -------------- |
| verdadeiro | **falso**      |
| falso      | **verdadeiro** |

### Analogia: interruptor

É como apertar o botão de um interruptor: o que estava ligado desliga, e o que estava desligado liga.

### Exemplo em código

```portugol
logico estaFerias = falso
logico trabalhando = nao estaFerias   // nao falso = verdadeiro

escreva(trabalhando)  // verdadeiro
```

```portugol
logico chuva = verdadeiro
logico solAberto = nao chuva   // nao verdadeiro = falso

escreva(solAberto)  // falso
```

---

## 7. Combinando Operadores

Os três operadores podem ser **combinados** em expressões mais complexas, da mesma forma que somas e multiplicações numéricas.

### Precedência (ordem de avaliação)

1. `nao` — avaliado primeiro (maior prioridade)
2. `e` — avaliado em seguida
3. `ou` — avaliado por último (menor prioridade)
4. `( )` — parênteses sempre têm prioridade máxima

### Exemplos

```portugol
// Sem parênteses — nao tem prioridade maior que e
logico resultado = verdadeiro e nao falso
// = verdadeiro e verdadeiro
// = verdadeiro

// Com parênteses — muda a ordem
logico resultado2 = nao (verdadeiro e falso)
// = nao falso
// = verdadeiro

// Combinaçao complexa
logico A = verdadeiro
logico B = falso
logico C = verdadeiro

logico expr = (A e B) ou (nao B e C)
// = (verdadeiro e falso) ou (verdadeiro e verdadeiro)
// = falso ou verdadeiro
// = verdadeiro
```

---

## 8. Tabela-Verdade

A **tabela-verdade** é uma ferramenta para listar **todas as combinações possíveis** de valores e seus resultados.

Para `n` variáveis, existem **2ⁿ combinações**.

| Variáveis | Combinações |
| --------- | ----------- |
| 1         | 2¹ = 2      |
| 2         | 2² = 4      |
| 3         | 2³ = 8      |
| 4         | 2⁴ = 16     |

### Tabela-verdade completa para 3 variáveis

Para a expressão `(A e B) ou (nao C)`:

| A   | B   | C   | A `e` B | `nao` C | (A `e` B) `ou` (`nao` C) |
| --- | --- | --- | ------- | ------- | ------------------------ |
| F   | F   | F   | F       | V       | **V**                    |
| F   | F   | V   | F       | F       | **F**                    |
| F   | V   | F   | F       | V       | **V**                    |
| F   | V   | V   | F       | F       | **F**                    |
| V   | F   | F   | F       | V       | **V**                    |
| V   | F   | V   | F       | F       | **F**                    |
| V   | V   | F   | V       | V       | **V**                    |
| V   | V   | V   | V       | F       | **V**                    |

---

## 9. Aplicações Práticas

A Álgebra de Bool é usada em todo lugar na programação:

### 9.1 Validação de formulário

```portugol
cadeia nome = "João"
inteiro idade = 25
cadeia email = "joao@email.com"

logico nomeValido = (nome != "")
logico idadeValida = (idade >= 18)
logico emailValido = (email != "")

logico cadastroOk = nomeValido e idadeValida e emailValido
// verdadeiro e verdadeiro e verdadeiro = verdadeiro

se (cadastroOk) {
    escreva("Cadastro realizado com sucesso!")
} senao {
    escreva("Dados incompletos ou inválidos.")
}
```

### 9.2 Controle de acesso

```portugol
cadeia usuario = "ana"
cadeia senha = "1234"
logico contaAtiva = verdadeiro

logico usuarioOk = (usuario == "ana")
logico senhaOk = (senha == "1234")

logico podeLogar = usuarioOk e senhaOk e contaAtiva
```

### 9.3 Verificações combinadas

```portugol
inteiro hora = 14  // 14h
logico diaUtil = verdadeiro
logico estaAberto = diaUtil e (hora >= 8) e (hora < 18)

se (estaAberto) {
    escreva("Loja aberta!")
} senao {
    escreva("Loja fechada.")
}
```

---

## 10. Propriedades da Álgebra de Bool

A álgebra booleana tem propriedades matemáticas que permitem **simplificar expressões**.

| Propriedade        | AND                   | OR                             |
| ------------------ | --------------------- | ------------------------------ |
| **Identidade**     | `A e verdadeiro = A`  | `A ou falso = A`               |
| **Anulação**       | `A e falso = falso`   | `A ou verdadeiro = verdadeiro` |
| **Idempotência**   | `A e A = A`           | `A ou A = A`                   |
| **Complemento**    | `A e (nao A) = falso` | `A ou (nao A) = verdadeiro`    |
| **Comutatividade** | `A e B = B e A`       | `A ou B = B ou A`              |
| **Dupla negação**  | `nao (nao A) = A`     | —                              |

### Exemplo de simplificação

```portugol
// Expressão original
logico resultado = (x e verdadeiro) ou falso
// = x ou falso       (identidade do AND)
// = x                (identidade do OR)

// Simplificada:
logico resultado = x
```

---

## 11. Armadilhas Comuns

### 11.1 Confundir `=` com `==`

```portugol
logico ativo = verdadeiro

// ERRADO — atribuição, não comparação
se (ativo = falso) { }

// CORRETO — comparação
se (ativo == falso) { }

// MAIS IDIOMÁTICO — verificar diretamente
se (nao ativo) { }
```

### 11.2 Curto-circuito — ordem importa

```portugol
inteiro saldo = 0
logico tem_saldo = (saldo > 0)
logico pode_sacar = tem_saldo e (saldo >= 100)
// Se tem_saldo for falso, o computador NÃO AVALIA (saldo >= 100)
// Isso se chama "avaliação de curto-circuito"
```

### 11.3 Dupla negação

```portugol
logico ativo = verdadeiro

logico complicado = nao (nao ativo)  // = verdadeiro (inútil)
logico simples = ativo               // mesmo resultado, mais claro
```

---

## 12. Exemplos de Código

Os exemplos estão na pasta `exemplos/`:

| Arquivo                                                               | Descrição                                |
| --------------------------------------------------------------------- | ---------------------------------------- |
| [01_variaveis_logicas.por](./exemplos/01_variaveis_logicas.por)       | Declaração e uso de variáveis `logico`   |
| [02_operadores_and_or.por](./exemplos/02_operadores_and_or.por)       | Operadores `e` e `ou` com exemplos reais |
| [03_operador_not.por](./exemplos/03_operador_not.por)                 | Operador `nao` e combinações             |
| [04_expressoes_compostas.por](./exemplos/04_expressoes_compostas.por) | Expressões booleanas complexas           |

---

## 13. Resumo

```
┌─────────────────────────────────────────────────────────────┐
│                    ÁLGEBRA DE BOOL                          │
│                                                              │
│  Só dois valores:  verdadeiro (1)   falso (0)               │
│                                                              │
│  OPERADORES:                                                 │
│    A e B    → AND: verdadeiro SOMENTE se ambos forem V      │
│    A ou B   → OR:  verdadeiro se PELO MENOS UM for V        │
│    nao A    → NOT: INVERTE o valor lógico                    │
│                                                              │
│  PRECEDÊNCIA:  nao  >  e  >  ou  >  ( )                    │
│                                                              │
│  TABELA-VERDADE: lista TODAS as combinações possíveis        │
│  Para n variáveis: 2ⁿ combinações                           │
│                                                              │
│  APLICAÇÕES: validação, controle de acesso, condicionais    │
└─────────────────────────────────────────────────────────────┘
```

---

## Slides

📊 [slides.html](./slides.html) — apresentação interativa com os conceitos desta aula.

---

## Exercícios

[EXERCICIOS.md](./EXERCICIOS.md) — 25 exercícios de tabela-verdade para fazer no papel.

---

_[Voltar ao início](../../README.md)_
