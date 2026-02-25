# Variaveis e Tipos de Dados

> "Todo programa e uma receita. As variaveis sao os ingredientes."

---

## 1. O que e uma Variavel?

Uma **variavel** e um espaco na memoria do computador onde podemos armazenar um valor. Pense nela como uma caixa com um nome, onde voce guarda algo.

```
┌─────────────────────────────────────────┐
│              MEMORIA RAM                │
│                                         │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  │
│  │  idade  │  │  nome   │  │ preco   │  │
│  │     ─── │  │  ─────  │  │  ─────  │  │
│  │   25    │  │ "Maria" │  │  9.99   │  │
│  └─────────┘  └─────────┘  └─────────┘  │
│                                         │
└─────────────────────────────────────────┘
```

### Regras para nomear variaveis

- Deve comecar com uma **letra** ou **underline** (`_`)
- Pode conter letras, numeros e underline
- **Nao pode** ter espacos ou caracteres especiais (`@`, `#`, `$`, etc.)
- **Nao pode** ser uma palavra reservada do Portugol

| Valido          | Invalido                           |
| --------------- | ---------------------------------- |
| `idade`         | `1idade` (comeca com numero)       |
| `nome_completo` | `nome completo` (tem espaco)       |
| `_valor`        | `valor@total` (caractere especial) |
| `nota1`         | `se` (palavra reservada)           |

---

## 2. Tipos de Dados no Portugol Studio

### 2.1 `inteiro` — Numeros Inteiros

Armazena numeros **sem casas decimais**, positivos ou negativos.

```portugol
inteiro idade = 25
inteiro temperatura = -10
inteiro populacao = 215000000
inteiro zero = 0
```

**Quando usar:** Contagem de itens, idades, anos, posicoes, indices.

**Faixa de valores:** aproximadamente -2 bilhoes ate +2 bilhoes

---

### 2.2 `real` — Numeros com Ponto Flutuante

Armazena numeros **com casas decimais**.

> **Atencao:** No Portugol Studio, o separador decimal e o **ponto** (`.`), nao a virgula!

```portugol
real preco = 19.99
real altura = 1.75
real pi = 3.14159
real temperatura = -2.5
real nota = 8.0
```

**Quando usar:** Precos, medidas, notas, calculos que precisam de precisao decimal.

---

### 2.3 `caracter` — Um Unico Caractere

Armazena **exatamente um caractere** entre aspas simples.

```portugol
caracter letra = 'A'
caracter digito = '7'
caracter simbolo = '@'
caracter espaco = ' '
```

**Quando usar:** Quando precisa armazenar apenas uma letra, digito ou simbolo.

> **Diferenca importante:** `'A'` (caracter) vs `"A"` (cadeia de texto)

---

### 2.4 `cadeia` — Texto (String)

Armazena uma **sequencia de caracteres** (palavras, frases, textos) entre aspas duplas.

```portugol
cadeia nome = "Maria"
cadeia sobrenome = "Silva"
cadeia cidade = "Sao Paulo"
cadeia frase = "Ola, mundo!"
cadeia vazia = ""
```

**Quando usar:** Nomes, enderecos, mensagens, qualquer texto.

---

### 2.5 `logico` — Verdadeiro ou Falso

Armazena apenas dois valores possíveis: `verdadeiro` ou `falso`.

```portugol
logico aprovado = verdadeiro
logico maior_de_idade = falso
logico tem_desconto = verdadeiro
```

**Quando usar:** Flags, condicoes, resultados de comparacoes.

> Este tipo e diretamente baseado na **Algebra Booleana** de George Boole — a matematica do 0 e 1 que fundamenta toda a computacao.

---

## 3. Declaracao de Variaveis

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

**Declarando multiplas variaveis do mesmo tipo:**

```portugol
inteiro a, b, c
inteiro x = 1, y = 2, z = 3
```

### 3.2 Estrutura basica de um programa em Portugol

Todo programa em Portugol tem esta estrutura:

```portugol
programa {
    funcao inicio() {
        // Seu codigo aqui
    }
}
```

- `programa` — palavra que inicia o programa
- `funcao inicio()` — ponto de entrada, onde o programa comeca a executar
- `{ }` — chaves delimitam blocos de codigo
- `//` — inicia um comentario de linha (ignorado pelo programa)
- `/* */` — comentario de multiplas linhas

---

## 4. Entrada e Saida de Dados

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

### `leia()` — Receber valor do usuario

```portugol
inteiro idade
escreva("Digite sua idade: ")
leia(idade)
```

---

## 5. Operacoes Matematicas

### 5.1 Operadores Basicos

| Operador | Operacao       | Exemplo  | Resultado |
| -------- | -------------- | -------- | --------- |
| `+`      | Adicao         | `5 + 3`  | `8`       |
| `-`      | Subtracao      | `10 - 4` | `6`       |
| `*`      | Multiplicacao  | `6 * 7`  | `42`      |
| `/`      | Divisao        | `15 / 4` | `3.75`    |
| `%`      | Modulo (resto) | `17 % 5` | `2`       |

> **Divisao inteira:** Quando dividimos dois `inteiro`, o resultado e truncado.
> `15 / 4` com dois inteiros resulta em `3`, nao `3.75`!
> Para obter `3.75`, pelo menos um dos valores deve ser `real`.

### 5.2 Precedencia de Operadores (Ordem das Operacoes)

O Portugol segue a mesma ordem da matematica:

```
1. Parenteses        ( )
2. Multiplicacao     *
3. Divisao           /
4. Modulo            %
5. Adicao            +
6. Subtracao         -
```

**Exemplo:**

```portugol
inteiro resultado = 2 + 3 * 4    // resultado = 14 (nao 20!)
inteiro correto = (2 + 3) * 4    // resultado = 20
```

### 5.3 Operadores de Atribuicao

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

## 6. Biblioteca Matematica

O Portugol Studio oferece funcoes matematicas prontas atraves da biblioteca `Matematica`:

| Funcao                        | Descricao                | Exemplo                           | Resultado    |
| ----------------------------- | ------------------------ | --------------------------------- | ------------ |
| `Matematica.raiz(n)`          | Raiz quadrada            | `Matematica.raiz(16)`             | `4.0`        |
| `Matematica.potencia(b, e)`   | Potenciacao              | `Matematica.potencia(2, 10)`      | `1024.0`     |
| `Matematica.absoluto(n)`      | Valor absoluto           | `Matematica.absoluto(-8)`         | `8`          |
| `Matematica.arredondar(n, d)` | Arredondamento           | `Matematica.arredondar(3.567, 2)` | `3.57`       |
| `Matematica.teto(n)`          | Arredonda para cima      | `Matematica.teto(3.2)`            | `4`          |
| `Matematica.piso(n)`          | Arredonda para baixo     | `Matematica.piso(3.9)`            | `3`          |
| `Matematica.maior(a, b)`      | Maior entre dois valores | `Matematica.maior(5, 9)`          | `9`          |
| `Matematica.menor(a, b)`      | Menor entre dois valores | `Matematica.menor(5, 9)`          | `5`          |
| `Matematica.PI`               | Constante PI             | `Matematica.PI`                   | `3.14159...` |

---

## 7. Conversao de Tipos

### Convertendo para inteiro

```portugol
real valor = 9.99
inteiro truncado = (inteiro) valor  // resultado: 9 (nao arredonda, trunca!)
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
inteiro resultado_errado = a / b    // resultado: 3 (divisao inteira!)
real resultado_certo = (real) a / b // resultado: 3.5
```

---

## 8. Concatenacao de Texto

Para juntar textos e valores, use o operador `+` com cadeias:

```portugol
cadeia nome = "Carlos"
inteiro idade = 30
escreval("Nome: " + nome)
escreval("Idade: " + idade)

// Tambem funciona assim:
escreval("Nome: ", nome, " - Idade: ", idade)
```

---

## 9. Exemplos de Codigo

Os exemplos estao na pasta `exemplos/`:

| Arquivo                                                                 | Descricao                          |
| ----------------------------------------------------------------------- | ---------------------------------- |
| [01_tipos_basicos.por](./exemplos/01_tipos_basicos.por)                 | Declaracao e uso dos 5 tipos       |
| [02_operacoes_matematicas.por](./exemplos/02_operacoes_matematicas.por) | Operadores basicos e precedencia   |
| [03_operacoes_avancadas.por](./exemplos/03_operacoes_avancadas.por)     | Biblioteca Matematica e conversoes |
| [04_entrada_saida.por](./exemplos/04_entrada_saida.por)                 | Interacao com o usuario            |

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

## Exercicios

[EXERCICIOS.md](./EXERCICIOS.md) — 25 exercicios sobre variaveis, tipos de dados e operacoes matematicas.

---

_[Voltar ao inicio](../../README.md)_
