# Vetores

> "Um vetor é como uma fila numerada de caixinhas — cada uma guarda um valor e pode ser acessada pelo seu número."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-08-vetores/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é um vetor?

Um **vetor** (também chamado de array ou lista) é uma estrutura que armazena **vários valores do mesmo tipo** em uma sequência contínua de posições na memória.

Em vez de criar muitas variáveis separadas:

```portugol
inteiro nota1 = 8
inteiro nota2 = 6
inteiro nota3 = 9
inteiro nota4 = 5
inteiro nota5 = 7
```

Você cria um único vetor:

```portugol
inteiro notas[5]
```

---

## 2. Declaração em Portugol Studio

```portugol
// Declarar um vetor com tamanho fixo (valores indefinidos)
inteiro numeros[5]

// Declarar e inicializar na mesma linha
inteiro pares[] = {2, 4, 6, 8, 10}

// Vetores de outros tipos
real temperaturas[7]
cadeia nomes[3]
```

---

## 3. Índices — como acessar cada posição

Os índices de um vetor **começam em 0**. Um vetor de tamanho N tem índices de `0` a `N-1`.

```
Vetor: notas[5]

 Índice:   0    1    2    3    4
          ┌────┬────┬────┬────┬────┐
 Valor:   │ 8  │ 6  │ 9  │ 5  │ 7  │
          └────┴────┴────┴────┴────┘
```

```portugol
notas[0] = 8     // escreve na posição 0
notas[4] = 7     // escreve na posição 4 (última)
escreval(notas[2])  // lê a posição 2 → exibe 9
```

> **Erro comum:** tentar acessar `notas[5]` em um vetor de 5 posições. O índice máximo é sempre `tamanho - 1` = `4`.

---

## 4. Percorrendo com o laço `para`

O padrão mais comum em vetores é usar o `para` para percorrer todas as posições:

```portugol
programa {
    funcao inicio() {
        inteiro numeros[5]

        // Preencher
        para (inteiro i = 0; i < 5; i++) {
            escreva("Digite o valor ", i + 1, ": ")
            leia(numeros[i])
        }

        // Imprimir
        para (inteiro i = 0; i < 5; i++) {
            escreval("numeros[", i, "] = ", numeros[i])
        }
    }
}
```

---

## 5. Soma e média

```portugol
programa {
    funcao inicio() {
        real notas[] = {7.0, 9.5, 6.0, 8.5, 5.0}
        real soma = 0.0

        para (inteiro i = 0; i < 5; i++) {
            soma = soma + notas[i]
        }

        real media = soma / 5.0
        escreval("Média: ", media)
    }
}
```

---

## 6. Encontrar o maior valor

```portugol
programa {
    funcao inicio() {
        inteiro valores[] = {3, 8, 1, 6, 4}
        inteiro maior = valores[0]   // começa com o primeiro

        para (inteiro i = 1; i < 5; i++) {
            se (valores[i] > maior) {
                maior = valores[i]
            }
        }

        escreval("Maior: ", maior)
    }
}
```

**Saída:** `Maior: 8`

---

## 7. Busca em vetor

```portugol
programa {
    funcao inicio() {
        inteiro v[] = {10, 3, 7, 2, 9}
        inteiro busca
        logico encontrado = falso

        escreva("Buscar: ")
        leia(busca)

        para (inteiro i = 0; i < 5; i++) {
            se (v[i] == busca) {
                escreval("Encontrado na posição ", i)
                encontrado = verdadeiro
            }
        }

        se (nao encontrado) {
            escreval("Número não encontrado.")
        }
    }
}
```

---

## 8. Resumo

| Conceito | Exemplo |
| :--- | :--- |
| Declaração | `inteiro v[5]` |
| Inicialização | `inteiro v[] = {1, 2, 3}` |
| Acesso | `v[0]`, `v[4]` |
| Percorrer | `para (inteiro i = 0; i < 5; i++)` |
| Índice válido | `0` até `tamanho - 1` |
| Soma/média | Acumular com laço `para` |
| Máximo/mínimo | Iniciar com `v[0]`, comparar com `para` |

---

📝 **[Ir para os Exercícios](./EXERCICIOS.md)**
