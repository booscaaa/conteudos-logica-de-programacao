# Estruturas de Fluxo de Controle

> "Um programa sem decisões é como uma estrada sem bifurcações — só tem um caminho."

---

## 1. O que é Fluxo de Controle?

Todo programa executa suas instruções em sequência, de cima para baixo. O **fluxo de controle** é a capacidade de **mudar essa sequência** com base em condições — fazendo o programa tomar decisões.

```
┌────────────────────────────────────────────┐
│           FLUXO SEQUENCIAL                  │
│                                             │
│   Instrução 1                               │
│       ↓                                     │
│   Instrução 2                               │
│       ↓                                     │
│   Instrução 3                               │
└────────────────────────────────────────────┘

┌────────────────────────────────────────────┐
│         FLUXO COM DECISÃO                   │
│                                             │
│   Instrução 1                               │
│       ↓                                     │
│   [Condição?] ──Sim──→ Instrução A          │
│       │                                     │
│      Não                                    │
│       ↓                                     │
│   Instrução B                               │
└────────────────────────────────────────────┘
```

---

## 2. Operadores de Comparação

Para tomar decisões, precisamos **comparar valores**. Toda comparação resulta em `verdadeiro` ou `falso`.

| Operador | Significado       | Exemplo    | Resultado    |
| -------- | ----------------- | ---------- | ------------ |
| `==`     | Igual a           | `5 == 5`   | `verdadeiro` |
| `!=`     | Diferente de      | `5 != 3`   | `verdadeiro` |
| `>`      | Maior que         | `10 > 7`   | `verdadeiro` |
| `<`      | Menor que         | `3 < 1`    | `falso`      |
| `>=`     | Maior ou igual a  | `5 >= 5`   | `verdadeiro` |
| `<=`     | Menor ou igual a  | `4 <= 3`   | `falso`      |

```portugol
inteiro a = 10
inteiro b = 7

logico maior = (a > b)        // verdadeiro
logico iguais = (a == b)      // falso
logico diferente = (a != b)   // verdadeiro
```

---

## 3. Operadores Lógicos

Permitem **combinar** duas ou mais condições.

| Operador | Significado | Resultado                                          |
| -------- | ----------- | -------------------------------------------------- |
| `e`      | AND (E)     | `verdadeiro` apenas se **ambas** forem verdadeiras |
| `ou`     | OR (OU)     | `verdadeiro` se **pelo menos uma** for verdadeira  |
| `nao`    | NOT (NÃO)   | **Inverte** o valor lógico                         |

### Tabela-verdade do operador `e`

| A            | B            | A `e` B      |
| ------------ | ------------ | ------------ |
| verdadeiro   | verdadeiro   | verdadeiro   |
| verdadeiro   | falso        | falso        |
| falso        | verdadeiro   | falso        |
| falso        | falso        | falso        |

### Tabela-verdade do operador `ou`

| A            | B            | A `ou` B     |
| ------------ | ------------ | ------------ |
| verdadeiro   | verdadeiro   | verdadeiro   |
| verdadeiro   | falso        | verdadeiro   |
| falso        | verdadeiro   | verdadeiro   |
| falso        | falso        | falso        |

### Tabela-verdade do operador `nao`

| A            | `nao` A      |
| ------------ | ------------ |
| verdadeiro   | falso        |
| falso        | verdadeiro   |

```portugol
inteiro idade = 20
logico tem_carteira = verdadeiro

// Pode dirigir se tiver >= 18 E tiver carteira
logico pode_dirigir = (idade >= 18) e tem_carteira    // verdadeiro

// Desconto se for menor de 12 OU maior de 60
logico tem_desconto = (idade < 12) ou (idade > 60)    // falso

// Não está de férias
logico esta_ferias = falso
logico trabalhando = nao esta_ferias                  // verdadeiro
```

---

## 4. Estrutura `se` — If

A estrutura mais básica de decisão. O bloco só executa **se a condição for verdadeira**.

### Sintaxe

```portugol
se (condição) {
    // Código executado SOMENTE se a condição for verdadeira
}
```

### Exemplo

```portugol
inteiro temperatura = 35

se (temperatura > 30) {
    escreval("Está muito quente! Beba água.")
}
escreval("Fim do programa.")
```

**Saída:**
```
Está muito quente! Beba água.
Fim do programa.
```

Se `temperatura` fosse `25`, o `escreval` dentro do `se` seria ignorado, e apenas `"Fim do programa."` seria exibido.

---

## 5. Estrutura `se/senao` — If/Else

Adiciona um bloco alternativo que executa quando a condição é **falsa**.

### Sintaxe

```portugol
se (condição) {
    // Executado se a condição for VERDADEIRA
} senao {
    // Executado se a condição for FALSA
}
```

### Diagrama

```
          [condição?]
         /           \
       Sim            Não
        ↓              ↓
   bloco se        bloco senao
        \              /
         → continua →
```

### Exemplo

```portugol
inteiro nota = 6

se (nota >= 7) {
    escreval("Aprovado!")
} senao {
    escreval("Reprovado.")
}
```

**Saída:** `Reprovado.`

---

## 6. Estrutura `se/senao se/senao` — If/Else If/Else

Quando existem **mais de duas possibilidades**. O programa verifica cada condição na ordem — e executa apenas o **primeiro bloco** cuja condição for verdadeira.

### Sintaxe

```portugol
se (condição1) {
    // Executado se condição1 for verdadeira
} senao se (condição2) {
    // Executado se condição1 for falsa E condição2 for verdadeira
} senao se (condição3) {
    // Executado se condição1 e condição2 forem falsas E condição3 for verdadeira
} senao {
    // Executado se NENHUMA condição anterior for verdadeira
}
```

### Exemplo — Classificação de notas

```portugol
inteiro nota = 85

se (nota >= 90) {
    escreval("Conceito A — Excelente!")
} senao se (nota >= 75) {
    escreval("Conceito B — Bom!")
} senao se (nota >= 60) {
    escreval("Conceito C — Regular.")
} senao se (nota >= 50) {
    escreval("Conceito D — Abaixo do esperado.")
} senao {
    escreval("Conceito F — Reprovado.")
}
```

**Saída:** `Conceito B — Bom!`

> **Importante:** Assim que **uma condição** é verdadeira, o restante da cadeia é **ignorado**. A ordem importa!

### Exemplo — Faixa etária

```portugol
inteiro idade = 16

se (idade < 12) {
    escreval("Criança")
} senao se (idade < 18) {
    escreval("Adolescente")
} senao se (idade < 60) {
    escreval("Adulto")
} senao {
    escreval("Idoso")
}
```

**Saída:** `Adolescente`

---

## 7. Estrutura `escolha/caso` — Switch/Case

Usada quando precisamos comparar uma **variável ou expressão** com vários **valores fixos e específicos**. É uma alternativa mais legível ao `senao se` em cadeia.

### Sintaxe

```portugol
escolha (variavel) {
    caso valor1:
        // Executado se variavel == valor1
        pare
    caso valor2:
        // Executado se variavel == valor2
        pare
    contrario:
        // Executado se nenhum caso corresponder
        pare
}
```

- `pare` — encerra o `escolha` (equivale ao `break` de outras linguagens)
- `contrario` — o caso padrão quando nenhum outro corresponde (equivale ao `default`)

### Exemplo — Dia da semana

```portugol
inteiro dia = 3

escolha (dia) {
    caso 1:
        escreval("Segunda-feira")
        pare
    caso 2:
        escreval("Terça-feira")
        pare
    caso 3:
        escreval("Quarta-feira")
        pare
    caso 4:
        escreval("Quinta-feira")
        pare
    caso 5:
        escreval("Sexta-feira")
        pare
    caso 6:
        escreval("Sábado")
        pare
    caso 7:
        escreval("Domingo")
        pare
    contrario:
        escreval("Dia inválido! Informe um número de 1 a 7.")
        pare
}
```

**Saída:** `Quarta-feira`

### Exemplo — Menu de opções

```portugol
inteiro opcao

escreva("Escolha uma opção (1-3): ")
leia(opcao)

escolha (opcao) {
    caso 1:
        escreval("Você escolheu: Novo jogo")
        pare
    caso 2:
        escreval("Você escolheu: Carregar jogo")
        pare
    caso 3:
        escreval("Saindo...")
        pare
    contrario:
        escreval("Opção inválida!")
        pare
}
```

### `se/senao se` vs `escolha/caso` — Quando usar cada um?

| Situação                                       | Use          |
| ---------------------------------------------- | ------------ |
| Comparar um valor com vários valores exatos    | `escolha`    |
| Verificar intervalos (`> 10`, `<= 5`)          | `se/senao`   |
| Combinar múltiplas condições (`e`, `ou`, `nao`)| `se/senao`   |
| Menu com opções fixas                          | `escolha`    |
| Validação com faixas de valores                | `se/senao`   |

---

## 8. Condicionais Aninhadas

É possível colocar um `se` dentro de outro `se`. Isso se chama **aninhamento** e permite verificar condições mais complexas.

### Exemplo

```portugol
inteiro idade = 20
logico tem_carteira = verdadeiro

se (idade >= 18) {
    se (tem_carteira) {
        escreval("Pode dirigir!")
    } senao {
        escreval("Maior de idade, mas sem carteira.")
    }
} senao {
    escreval("Menor de idade. Não pode dirigir.")
}
```

> **Cuidado com o excesso!** Muitos `se` aninhados tornam o código difícil de ler. Quando possível, use operadores lógicos (`e`, `ou`) para simplificar.

### Simplificando com operadores lógicos

```portugol
// Versão aninhada (mais difícil de ler)
se (idade >= 18) {
    se (tem_carteira) {
        escreval("Pode dirigir!")
    }
}

// Versão com operador lógico (mais clara)
se (idade >= 18 e tem_carteira) {
    escreval("Pode dirigir!")
}
```

---

## 9. Armadilhas Comuns

### 9.1 Confundir `=` com `==`

```portugol
inteiro x = 5

// ERRADO — atribuição, não comparação
se (x = 10) { ... }

// CORRETO — comparação de igualdade
se (x == 10) { ... }
```

### 9.2 Ordem errada nas condições

```portugol
inteiro nota = 95

// ERRADO — a primeira condição captura tudo >= 60, nunca chegará ao >= 90
se (nota >= 60) {
    escreval("Aprovado")
} senao se (nota >= 90) {
    escreval("Excelente")  // nunca executado!
}

// CORRETO — do mais restritivo para o menos restritivo
se (nota >= 90) {
    escreval("Excelente")
} senao se (nota >= 60) {
    escreval("Aprovado")
}
```

### 9.3 Esquecer o `pare` no `escolha`

Sem o `pare`, o programa continua executando os próximos casos, mesmo que não correspondam.

```portugol
// SEM pare — executa todos os casos a partir do que combina
escolha (opcao) {
    caso 1:
        escreval("Um")   // executa
    caso 2:
        escreval("Dois") // também executa!
    caso 3:
        escreval("Três") // também executa!
}

// COM pare — correto
escolha (opcao) {
    caso 1:
        escreval("Um")
        pare  // para aqui
    caso 2:
        escreval("Dois")
        pare
}
```

---

## 10. Exemplos de Código

Os exemplos estão na pasta `exemplos/`:

| Arquivo                                                                     | Descrição                                 |
| --------------------------------------------------------------------------- | ----------------------------------------- |
| [01_se_senao.por](./exemplos/01_se_senao.por)                               | Estruturas `se` e `se/senao` básicas      |
| [02_se_senao_se.por](./exemplos/02_se_senao_se.por)                         | Cadeia `se/senao se/senao` e casos reais  |
| [03_escolha_caso.por](./exemplos/03_escolha_caso.por)                       | Estrutura `escolha/caso` e menus          |
| [04_condicionais_avancadas.por](./exemplos/04_condicionais_avancadas.por)   | Aninhamento e operadores lógicos          |

---

## 11. Resumo

```
┌─────────────────────────────────────────────────────────────┐
│              ESTRUTURAS CONDICIONAIS                         │
│                                                              │
│  se (cond) { }                 → executa se verdadeiro       │
│                                                              │
│  se (cond) { }                 → executa se verdadeiro       │
│  senao { }                     → executa se falso            │
│                                                              │
│  se (cond1) { }                → verifica cond1             │
│  senao se (cond2) { }          → verifica cond2             │
│  senao { }                     → nenhuma das anteriores     │
│                                                              │
│  escolha (var) {               → compara valor exato        │
│      caso X: ... pare          → se var == X               │
│      contrario: ... pare       → se nenhum caso combinar   │
│  }                                                           │
│                                                              │
│  OPERADORES DE COMPARAÇÃO:  ==  !=  >  <  >=  <=           │
│  OPERADORES LÓGICOS:        e   ou  nao                      │
└─────────────────────────────────────────────────────────────┘
```

---

## Exercícios

[EXERCICIOS.md](./EXERCICIOS.md) — 25 exercícios sobre estruturas condicionais.

---

_[Voltar ao início](../../README.md)_
