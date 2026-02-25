# Variáveis e Tipos de Dados

> "Todo programa é uma receita. As variáveis são os ingredientes."

---

## 1. O que é uma Variável?

Uma **variável** é um espaço na memória do computador onde podemos armazenar um valor. Pense nela como uma caixa com um nome, onde você guarda algo.

```
┌─────────────────────────────────────────┐
│              MEMÓRIA RAM                │
│                                         │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  │
│  │  idade  │  │  nome   │  │ preco   │  │
│  │     ─── │  │  ─────  │  │  ─────  │  │
│  │   25    │  │ "Maria" │  │  9.99   │  │
│  └─────────┘  └─────────┘  └─────────┘  │
│                                         │
└─────────────────────────────────────────┘
```

### Regras para nomear variáveis

- Deve começar com uma **letra** ou **underline** (`_`)
- Pode conter letras, números e underline
- **Não pode** ter espaços ou caracteres especiais (`@`, `#`, `$`, etc.)
- **Não pode** ser uma palavra reservada do Portugol

| Válido          | Inválido                           |
| --------------- | ---------------------------------- |
| `idade`         | `1idade` (começa com número)       |
| `nome_completo` | `nome completo` (tem espaço)       |
| `_valor`        | `valor@total` (caractere especial) |
| `nota1`         | `se` (palavra reservada)           |

---

## 2. Tipos de Dados no Portugol Studio

### 2.1 `inteiro` — Números Inteiros

Armazena números **sem casas decimais**, positivos ou negativos.

```portugol
inteiro idade = 25
inteiro temperatura = -10
inteiro populacao = 215000000
inteiro zero = 0
```

**Quando usar:** Contagem de itens, idades, anos, posições, índices.

**Faixa de valores:** aproximadamente -2 bilhões até +2 bilhões

---

### 2.2 `real` — Números com Ponto Flutuante

Armazena números **com casas decimais**.

> **Atenção:** No Portugol Studio, o separador decimal é o **ponto** (`.`), não a vírgula!

```portugol
real preco = 19.99
real altura = 1.75
real pi = 3.14159
real temperatura = -2.5
real nota = 8.0
```

**Quando usar:** Preços, medidas, notas, cálculos que precisam de precisão decimal.

---

### 2.3 `caracter` — Um Único Caractere

Armazena **exatamente um caractere** entre aspas simples.

```portugol
caracter letra = 'A'
caracter digito = '7'
caracter simbolo = '@'
caracter espaco = ' '
```

**Quando usar:** Quando precisa armazenar apenas uma letra, dígito ou símbolo.

> **Diferença importante:** `'A'` (caracter) vs `"A"` (cadeia de texto)

---

### 2.4 `cadeia` — Texto (String)

Armazena uma **sequência de caracteres** (palavras, frases, textos) entre aspas duplas.

```portugol
cadeia nome = "Maria"
cadeia sobrenome = "Silva"
cadeia cidade = "Sao Paulo"
cadeia frase = "Ola, mundo!"
cadeia vazia = ""
```

**Quando usar:** Nomes, endereços, mensagens, qualquer texto.

---

### 2.5 `logico` — Verdadeiro ou Falso

Armazena apenas dois valores possíveis: `verdadeiro` ou `falso`.

```portugol
logico aprovado = verdadeiro
logico maior_de_idade = falso
logico tem_desconto = verdadeiro
```

**Quando usar:** Flags, condições, resultados de comparações.

> Este tipo é diretamente baseado na **Álgebra Booleana** de George Boole — a matemática do 0 e 1 que fundamenta toda a computação.

---

## 3. Declaração de Variáveis

### 3.1 Formas de declarar

**Declarando sem valor inicial:**

```portugol
inteiro numero
real valor
cadeia nome
```

**Declarando com valor inicial:**

```portugol
inteiro numero = 10
real valor = 3.14
cadeia nome = "Ana"
```

**Declarando múltiplas variáveis do mesmo tipo:**

```portugol
inteiro a, b, c
inteiro x = 1, y = 2, z = 3
```

### 3.2 Estrutura básica de um programa em Portugol

Todo programa em Portugol tem esta estrutura:

```portugol
programa {
    funcao inicio() {
        // Seu código aqui
    }
}
```

- `programa` — palavra que inicia o programa
- `funcao inicio()` — ponto de entrada, onde o programa começa a executar
- `{ }` — chaves delimitam blocos de código
- `//` — inicia um comentário de linha (ignorado pelo programa)
- `/* */` — comentário de múltiplas linhas

---

## 4. Entrada e Saída de Dados

### `escreva()` — Exibir sem quebra de linha

```portugol
escreva("Ola, mundo!")
escreva("Valor: ", 42)
```

### `escreval()` — Exibir com quebra de linha (Enter)

```portugol
escreval("Primeira linha")
escreval("Segunda linha")
```

### `leia()` — Receber valor do usuário

```portugol
inteiro idade
escreva("Digite sua idade: ")
leia(idade)
```

---

## 5. Operações Matemáticas

### 5.1 Operadores Básicos

| Operador | Operação       | Exemplo  | Resultado |
| -------- | -------------- | -------- | --------- |
| `+`      | Adição         | `5 + 3`  | `8`       |
| `-`      | Subtração      | `10 - 4` | `6`       |
| `*`      | Multiplicação  | `6 * 7`  | `42`      |
| `/`      | Divisão        | `15 / 4` | `3.75`    |
| `%`      | Módulo (resto) | `17 % 5` | `2`       |

> **Divisão inteira:** Quando dividimos dois `inteiro`, o resultado é truncado.
> `15 / 4` com dois inteiros resulta em `3`, não `3.75`!
> Para obter `3.75`, pelo menos um dos valores deve ser `real`.

### 5.2 Precedência de Operadores (Ordem das Operações)

O Portugol segue a mesma ordem da matemática:

```
1. Parênteses        ( )
2. Multiplicação     *
3. Divisão           /
4. Módulo            %
5. Adição            +
6. Subtração         -
```

**Exemplo:**

```portugol
inteiro resultado = 2 + 3 * 4    // resultado = 14 (não 20!)
inteiro correto = (2 + 3) * 4    // resultado = 20
```

### 5.3 Operadores de Atribuição

| Operador | Equivalente a | Exemplo  |
| -------- | ------------- | -------- |
| `=`      | atribui valor | `x = 5`  |
| `+=`     | `x = x + n`   | `x += 3` |
| `-=`     | `x = x - n`   | `x -= 3` |
| `*=`     | `x = x * n`   | `x *= 2` |
| `/=`     | `x = x / n`   | `x /= 2` |

### 5.4 Incremento e Decremento

```portugol
inteiro contador = 0

contador++    // equivale a: contador = contador + 1
contador--    // equivale a: contador = contador - 1
```

---

## 6. Biblioteca Matemática

O Portugol Studio oferece funções matemáticas prontas através da biblioteca `Matematica`:

| Função                        | Descrição                | Exemplo                           | Resultado    |
| ----------------------------- | ------------------------ | --------------------------------- | ------------ |
| `Matematica.raiz(n)`          | Raiz quadrada            | `Matematica.raiz(16)`             | `4.0`        |
| `Matematica.potencia(b, e)`   | Potenciação              | `Matematica.potencia(2, 10)`      | `1024.0`     |
| `Matematica.absoluto(n)`      | Valor absoluto           | `Matematica.absoluto(-8)`         | `8`          |
| `Matematica.arredondar(n, d)` | Arredondamento           | `Matematica.arredondar(3.567, 2)` | `3.57`       |
| `Matematica.teto(n)`          | Arredonda para cima      | `Matematica.teto(3.2)`            | `4`          |
| `Matematica.piso(n)`          | Arredonda para baixo     | `Matematica.piso(3.9)`            | `3`          |
| `Matematica.maior(a, b)`      | Maior entre dois valores | `Matematica.maior(5, 9)`          | `9`          |
| `Matematica.menor(a, b)`      | Menor entre dois valores | `Matematica.menor(5, 9)`          | `5`          |
| `Matematica.PI`               | Constante PI             | `Matematica.PI`                   | `3.14159...` |

---

## 7. Conversão de Tipos

### Convertendo para inteiro

```portugol
real valor = 9.99
inteiro truncado = (inteiro) valor  // resultado: 9 (não arredonda, trunca!)
```

### Convertendo para real

```portugol
inteiro numero = 5
real convertido = (real) numero  // resultado: 5.0
```

### Por que isso importa?

```portugol
inteiro a = 7
inteiro b = 2
inteiro resultado_errado = a / b    // resultado: 3 (divisão inteira!)
real resultado_certo = (real) a / b // resultado: 3.5
```

---

## 8. Concatenação de Texto

Para juntar textos e valores, use o operador `+` com cadeias:

```portugol
cadeia nome = "Carlos"
inteiro idade = 30
escreval("Nome: " + nome)
escreval("Idade: " + idade)

// Também funciona assim:
escreval("Nome: ", nome, " - Idade: ", idade)
```

---

## 9. Exemplos de Código

Os exemplos estão na pasta `exemplos/`:

| Arquivo                                                                 | Descrição                          |
| ----------------------------------------------------------------------- | ---------------------------------- |
| [01_tipos_basicos.por](./exemplos/01_tipos_basicos.por)                 | Declaração e uso dos 5 tipos       |
| [02_operacoes_matematicas.por](./exemplos/02_operacoes_matematicas.por) | Operadores básicos e precedência   |
| [03_operacoes_avancadas.por](./exemplos/03_operacoes_avancadas.por)     | Biblioteca Matemática e conversões |
| [04_entrada_saida.por](./exemplos/04_entrada_saida.por)                 | Interação com o usuário            |

---

## 10. Resumo dos Tipos de Dados

```
┌─────────────────────────────────────────────────────────┐
│                  TIPOS DE DADOS                          │
│                                                          │
│  inteiro  →  25, -10, 0, 1000                           │
│  real     →  3.14, -2.5, 0.0, 19.99                     │
│  caracter →  'A', '7', '@', ' '                         │
│  cadeia   →  "texto", "Ola mundo", ""                    │
│  logico   →  verdadeiro, falso                           │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

---

## Exercícios

[EXERCICIOS.md](./EXERCICIOS.md) — 25 exercícios sobre variáveis, tipos de dados e operações matemáticas.

---

_[Voltar ao início](../../README.md)_
