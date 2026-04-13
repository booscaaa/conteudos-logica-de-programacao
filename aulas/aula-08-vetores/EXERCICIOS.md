# Exercícios: Vetores

Pratique o uso de **vetores** com estes exercícios em **Portugol Studio**.

---

## 1. Preencher e Exibir

Crie um programa que:
1. Declare um vetor de **5 inteiros**.
2. Peça ao usuário que digite os 5 valores usando um laço `para`.
3. Exiba todos os valores digitados, com o índice de cada um.

**Exemplo de saída:**
```
numeros[0] = 10
numeros[1] = 4
numeros[2] = 7
numeros[3] = 2
numeros[4] = 9
```

> **Dica:** use `para (inteiro i = 0; i < 5; i++)` para percorrer o vetor.

---

## 2. Soma e Média

Crie um programa que:
1. Leia **6 notas** (valores reais entre 0 e 10) em um vetor.
2. Calcule e exiba a **soma** e a **média** das notas.

**Exemplo de saída:**
```
Soma: 48.5
Média: 8.08
```

---

## 3. Contagem de Aprovados

Usando o vetor de notas do exercício anterior (ou um novo), percorra-o e exiba:
- Quantos alunos foram **aprovados** (nota >= 6).
- Quantos foram **reprovados** (nota < 6).

**Exemplo de saída:**
```
Aprovados: 4
Reprovados: 2
```

---

## 4. Inverter Exibição

Crie um programa que leia **4 números inteiros** em um vetor e os exiba na **ordem inversa** (do último ao primeiro).

**Exemplo:**
- Entrada: `3, 7, 1, 9`
- Saída:
```
9
1
7
3
```

> **Dica:** percorra o vetor com `i` começando em `3` (último índice) e decrementando até `0`.

---

## 5. Maior e Menor

Crie um programa que leia **5 números inteiros** em um vetor e exiba o **maior** e o **menor** valor, junto com suas posições (índices).

**Exemplo de saída:**
```
Maior: 15 (posição 2)
Menor: -3 (posição 4)
```

> **Dica:** inicialize `maior` e `menor` com `vetor[0]` antes de percorrer.

---

## 6. Busca no Vetor

Crie um programa que:
1. Preencha um vetor de **5 inteiros** com valores digitados pelo usuário.
2. Peça ao usuário que informe um número para **buscar**.
3. Percorra o vetor e informe se o número foi encontrado e em qual posição.

**Exemplo:**
```
Vetor: 4 7 2 9 3
Buscar: 9
Encontrado na posição 3!
```

**Se não encontrar:**
```
Buscar: 5
Número não encontrado.
```

---

## 7. Temperatura Máxima da Semana

Crie um programa que leia a **temperatura de cada dia da semana** (7 valores reais) e informe:
- A temperatura mais **alta** da semana.
- O número do dia em que ocorreu (1 = segunda, 7 = domingo).

**Exemplo de saída:**
```
Temperatura mais alta: 34.5 graus
Dia: 3 (quarta-feira)
```

---

### Desafio Extra

Modifique o **Exercício 6** para encontrar **todas** as ocorrências do número buscado (o número pode aparecer mais de uma vez no vetor). Exiba a posição de cada ocorrência ou informe que não foi encontrado.

**Exemplo:**
```
Vetor: 4 9 2 9 7
Buscar: 9
Encontrado nas posições: 1, 3
```
