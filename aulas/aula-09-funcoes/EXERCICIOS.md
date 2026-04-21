# Exercícios: Funções

Pratique o uso de **funções** com estes exercícios em **Portugol Studio**.

---

## 1. Linha Separadora

Crie uma função chamada `exibirLinha` que não recebe parâmetros e não retorna valor. Ela deve imprimir uma linha de 30 traços (`------------------------------`).

Use essa função 3 vezes no `inicio()` para separar os seguintes blocos:
```
------------------------------
Nome: Ana
Curso: Sistemas de Informação
------------------------------
Nome: Bruno
Curso: Engenharia de Software
------------------------------
```

> **Dica:** uma função sem parâmetros e sem retorno é declarada como `funcao exibirLinha()`.

---

## 2. Saudação Personalizada

Crie uma função `saudar(cadeia nome, cadeia curso)` que exiba:
```
Olá, <nome>!
Bem-vindo ao curso de <curso>.
```

No `inicio()`, chame a função para pelo menos 3 pessoas diferentes.

**Exemplo:**
```
Olá, Carlos!
Bem-vindo ao curso de Lógica de Programação.
```

---

## 3. Calculadora com Funções

Crie as seguintes funções com retorno:
- `funcao real somar(real a, real b)` → retorna `a + b`
- `funcao real subtrair(real a, real b)` → retorna `a - b`
- `funcao real multiplicar(real a, real b)` → retorna `a * b`
- `funcao real dividir(real a, real b)` → retorna `a / b` (se b ≠ 0)

No `inicio()`, leia dois números do usuário e exiba os resultados das quatro operações usando essas funções.

**Exemplo de saída:**
```
Soma: 13.0
Subtração: 7.0
Multiplicação: 30.0
Divisão: 3.33...
```

---

## 4. Máximo e Mínimo

Crie duas funções:
- `funcao inteiro maximo(inteiro a, inteiro b)` → retorna o maior
- `funcao inteiro minimo(inteiro a, inteiro b)` → retorna o menor

No `inicio()`, leia 3 números inteiros e use essas funções para encontrar o maior e o menor dos três.

**Exemplo de saída:**
```
Maior dos três: 15
Menor dos três: 2
```

> **Dica:** para o maior dos três, faça `maximo(maximo(a, b), c)`.

---

## 5. Verificador de Par/Ímpar

Crie uma função `funcao logico ehPar(inteiro n)` que retorna `verdadeiro` se `n` for par e `falso` se for ímpar.

No `inicio()`:
1. Leia 5 números inteiros.
2. Para cada número, exiba se é par ou ímpar usando a função.

**Exemplo de saída:**
```
10 → par
7  → ímpar
4  → par
9  → ímpar
2  → par
```

---

## 6. Fatorial

Crie uma função `funcao inteiro fatorial(inteiro n)` que calcula o fatorial de `n` usando um laço `para`.

Lembre-se: `0! = 1`, `1! = 1`, `5! = 120`

No `inicio()`, leia um número e exiba seu fatorial.

**Exemplo de saída:**
```
Fatorial de 5 = 120
```

> **Dica:** acumule a multiplicação em uma variável iniciada com 1: `resultado = resultado * i`.

---

## 7. Classificador de Nota

Crie uma função `funcao cadeia classificarNota(real nota)` que retorna:
- `"Aprovado"` se nota >= 6.0
- `"Recuperação"` se nota >= 4.0 e < 6.0
- `"Reprovado"` se nota < 4.0

No `inicio()`, leia as notas de 4 alunos e exiba a classificação de cada um usando a função.

**Exemplo de saída:**
```
Aluno 1: nota 8.5 → Aprovado
Aluno 2: nota 5.0 → Recuperação
Aluno 3: nota 3.0 → Reprovado
Aluno 4: nota 7.2 → Aprovado
```

---

### Desafio Extra

Crie um **menu de calculadora** com laço `enquanto` que repete até o usuário escolher "Sair". Para cada operação, chame as funções criadas no Exercício 3. Adicione também uma função `funcao real potencia(real base, inteiro exp)` que calcula `base^exp` usando um laço `para`.

**Exemplo de menu:**
```
=== CALCULADORA ===
1. Somar
2. Subtrair
3. Multiplicar
4. Dividir
5. Potência
0. Sair
Escolha: _
```
