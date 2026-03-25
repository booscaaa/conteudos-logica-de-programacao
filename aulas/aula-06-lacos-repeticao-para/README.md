# Laços de Repetição: o comando `para`

> "Um laço bem escrito faz em 3 linhas o que repetiria 100 vezes o mesmo bloco de código."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-06-lacos-repeticao-para/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que são laços de repetição?

Imagine que você precisa imprimir os números de 1 até 100. Sem laços, você precisaria escrever `escreva(1)`, `escreva(2)`, ..., `escreva(100)` — 100 linhas de código idênticas! Com laços, você resolve com 3 linhas.

**Laços de repetição** (também chamados de *loops*) permitem executar um bloco de código **várias vezes**, sem precisar repeti-lo manualmente.

Em Portugol Studio existem três tipos de laços:

| Laço | Quando usar |
| :--- | :--- |
| `para` | Quando você **sabe exatamente** quantas repetições precisa |
| `enquanto` | Quando você repete **enquanto uma condição for verdadeira** |
| `faca/enquanto` | Quando o bloco deve executar **pelo menos uma vez** |

---

## 2. O laço `para` no Portugol Studio

O `para` é o laço mais simples quando você conhece o número exato de repetições. Em Portugol Studio ele usa **sintaxe C-like** com três partes entre parênteses:

```portugol
para(inteiro i = 1; i <= 10; i++) {
    // bloco que se repete
}
```

### As três partes do `para`:

| Parte | Exemplo | O que faz? |
| :--- | :--- | :--- |
| **Inicialização** | `inteiro i = 1` | Cria e define o valor inicial do contador |
| **Condição** | `i <= 10` | Enquanto verdadeira, o bloco continua executando |
| **Incremento** | `i++` | Atualiza o contador após cada repetição |

> **Dica:** `i++` é um atalho para `i = i + 1`. Você também pode usar `i--` (decrementar), `i += 2` (pular de 2 em 2), etc.

---

## 3. Exemplo básico — contar de 1 a 5

```portugol
programa {
    funcao inicio() {
        para(inteiro i = 1; i <= 5; i++) {
            escreval(i)
        }
    }
}
```

**Saída:**
```
1
2
3
4
5
```

### O que acontece internamente:

| Iteração | i | Condição `i <= 5` | Executa? |
| :---: | :---: | :---: | :---: |
| 1ª | 1 | Verdadeiro | ✅ |
| 2ª | 2 | Verdadeiro | ✅ |
| 3ª | 3 | Verdadeiro | ✅ |
| 4ª | 4 | Verdadeiro | ✅ |
| 5ª | 5 | Verdadeiro | ✅ |
| — | 6 | **Falso** | ❌ (laço encerra) |

---

## 4. Variações do incremento

### Passo de 2 em 2 — números pares
```portugol
programa {
    funcao inicio() {
        para(inteiro i = 0; i <= 10; i += 2) {
            escreval(i)
        }
    }
}
```
**Saída:** `0  2  4  6  8  10`

### Contagem regressiva
```portugol
programa {
    funcao inicio() {
        para(inteiro i = 10; i >= 1; i--) {
            escreval(i)
        }
        escreval("Fogo!")
    }
}
```
**Saída:** `10  9  8  ...  1  Fogo!`

---

## 5. O padrão acumulador

Um **acumulador** é uma variável que vai somando (ou multiplicando) valores a cada iteração. É essencial para calcular totais, médias e fatoriais.

```portugol
programa {
    funcao inicio() {
        inteiro soma = 0

        para(inteiro i = 1; i <= 5; i++) {
            soma = soma + i
        }

        escreval("Soma de 1 a 5: ", soma)  // 15
    }
}
```

> **Regra de ouro:** sempre inicialize o acumulador com **0** (para somas) ou **1** (para produtos) **antes** do laço.

| i | operação | soma |
| :---: | :---: | :---: |
| — | soma = 0 | 0 |
| 1 | 0 + 1 | 1 |
| 2 | 1 + 2 | 3 |
| 3 | 3 + 3 | 6 |
| 4 | 6 + 4 | 10 |
| 5 | 10 + 5 | **15** |

---

## 6. Laço `para` com entrada do usuário

Você pode usar uma variável lida pelo usuário como limite:

```portugol
programa {
    funcao inicio() {
        inteiro n

        escreva("Até qual número quer contar? ")
        leia(n)

        para(inteiro i = 1; i <= n; i++) {
            escreval(i)
        }
    }
}
```

---

## 7. Armadilhas comuns

### ❌ Laço infinito
Se a condição nunca se tornar falsa, o programa trava!
```portugol
// ERRADO — i nunca chega a ser > 10 se sempre somamos 0
para(inteiro i = 1; i <= 10; i += 0) { ... }
```

### ❌ Off-by-one (erro de um)
Fique atento ao usar `<` vs `<=`:
```portugol
para(inteiro i = 1; i < 5; i++)   // executa 4 vezes: i = 1, 2, 3, 4
para(inteiro i = 1; i <= 5; i++)  // executa 5 vezes: i = 1, 2, 3, 4, 5
```

### ❌ Modificar o contador dentro do laço
Nunca altere a variável contadora dentro do bloco — o comportamento fica imprevisível.

---

## 8. Resumo

| Conceito | Exemplo |
| :--- | :--- |
| Laço básico | `para(inteiro i = 1; i <= N; i++)` |
| Contagem regressiva | `para(inteiro i = N; i >= 1; i--)` |
| Passo personalizado | `para(inteiro i = 0; i <= 20; i += 5)` |
| Acumulador | `soma = soma + i` dentro do laço |

---

📝 **[Ir para os Exercícios](./EXERCICIOS.md)**
