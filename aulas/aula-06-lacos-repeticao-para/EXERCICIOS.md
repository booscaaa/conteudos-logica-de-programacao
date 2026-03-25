# Exercícios: Laço de Repetição `para`

Pratique o uso do laço `para` com estes exercícios em **Portugol Studio**.

---

## 1. Contagem Customizada

Crie um programa que leia dois números inteiros do usuário — **início** e **fim** — e exiba todos os números nesse intervalo, um por linha.

**Exemplo de entrada:** `início = 3`, `fim = 7`
**Saída esperada:** `3  4  5  6  7`

> **Dica:** use a variável lida pelo usuário como limite do `para`.

---

## 2. Tabuada Completa

Leia um número inteiro do usuário e exiba a tabuada desse número de 1 a 10 no formato:
```
5 x 1 = 5
5 x 2 = 10
...
5 x 10 = 50
```

---

## 3. Soma dos Ímpares

Calcule e exiba a **soma de todos os números ímpares** de 1 até um número `N` digitado pelo usuário.

**Exemplo:** `N = 9` → soma = 1 + 3 + 5 + 7 + 9 = **25**

> **Dica:** use `i += 2` para percorrer apenas os ímpares, ou verifique `i % 2 != 0` dentro do laço.

---

## 4. Contagem Regressiva com Lançamento

Crie um programa que leia um número `N` e faça uma contagem regressiva de `N` até `1`, exibindo cada número. Ao final, exiba a mensagem `"Lançamento!"`.

**Exemplo:** `N = 5` → `5  4  3  2  1  Lançamento!`

---

## 5. Fatorial

Crie um programa que leia um número inteiro positivo `N` e calcule o seu **fatorial** (`N!`).

Lembre que: `5! = 5 × 4 × 3 × 2 × 1 = 120`

> **Dica:** use um acumulador inicializado com `1` e multiplique a cada iteração.

---

## 6. Média de Notas

Crie um programa que:
1. Leia a **quantidade de alunos** da turma.
2. Para cada aluno, leia sua nota.
3. Ao final, exiba a **média da turma**.

**Exemplo:** 3 alunos com notas 7, 8 e 9 → média = **8.0**

> **Dica:** acumule a soma das notas e divida pelo total de alunos.

---

## 7. Triângulo de Asteriscos

Crie um programa que leia um número `N` e desenhe um triângulo de asteriscos com `N` linhas:

**Exemplo:** `N = 4`
```
*
**
***
****
```

> **Dica:** use dois laços `para` aninhados: o externo controla as linhas, o interno imprime os asteriscos de cada linha.

---

### Desafio Extra

Modifique o **Exercício 7** para exibir o triângulo **invertido** (maior linha no topo):
```
****
***
**
*
```
