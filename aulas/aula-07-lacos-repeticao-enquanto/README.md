# Laços de Repetição: o comando `enquanto`

> "Use o `enquanto` quando a saída depende do usuário — você não sabe quando ele vai parar."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-07-lacos-repeticao-enquanto/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. Recapitulando os laços de repetição

Em Portugol Studio existem três laços. Cada um tem o seu momento ideal:

| Laço | Quando usar |
| :--- | :--- |
| `para` | Quando você **sabe exatamente** quantas repetições precisa |
| `enquanto` | Quando você repete **enquanto uma condição for verdadeira** e não sabe quantas vezes |
| `faca/enquanto` | Quando o bloco deve executar **pelo menos uma vez** antes de verificar a condição |

---

## 2. O laço `enquanto` no Portugol Studio

O `enquanto` testa a condição **antes** de executar o bloco. Se a condição já começar falsa, o bloco nunca é executado.

```portugol
enquanto (condição) {
    // bloco que se repete enquanto condição for verdadeira
}
```

### Diferença fundamental em relação ao `para`:

| | `para` | `enquanto` |
| :--- | :--- | :--- |
| Inicialização | Dentro dos `()` | **Antes** do laço |
| Atualização | Dentro dos `()` | **Dentro** do bloco |
| Uso ideal | Nº fixo de repetições | Condição dinâmica |

---

## 3. Exemplo básico — contar de 1 a 5

```portugol
programa {
    funcao inicio() {
        inteiro i = 1

        enquanto (i <= 5) {
            escreval(i)
            i = i + 1
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

| Teste | i | Condição `i <= 5` | Executa? |
| :---: | :---: | :---: | :---: |
| 1º | 1 | Verdadeiro | ✅ → escreva(1), i vira 2 |
| 2º | 2 | Verdadeiro | ✅ → escreva(2), i vira 3 |
| 3º | 3 | Verdadeiro | ✅ → escreva(3), i vira 4 |
| 4º | 4 | Verdadeiro | ✅ → escreva(4), i vira 5 |
| 5º | 5 | Verdadeiro | ✅ → escreva(5), i vira 6 |
| 6º | 6 | **Falso** | ❌ (laço encerra) |

---

## 4. Padrão clássico: validação de entrada

O `enquanto` é perfeito para **rejeitar dados inválidos** e pedir novamente até o usuário digitar algo correto.

```portugol
programa {
    funcao inicio() {
        inteiro nota = -1   // valor inválido para forçar a entrada no laço

        enquanto (nota < 0 ou nota > 10) {
            escreva("Digite uma nota entre 0 e 10: ")
            leia(nota)
        }

        escreval("Nota aceita: ", nota)
    }
}
```

> **Por que inicializar com `-1`?** Para garantir que a condição `nota < 0` seja verdadeira na primeira vez, forçando o laço a executar ao menos uma vez.

---

## 5. Padrão clássico: leitura com sentinela

Um **sentinela** é um valor especial que o usuário digita para sinalizar que quer parar. É muito usado para somar, contar ou processar uma lista de tamanho desconhecido.

```portugol
programa {
    funcao inicio() {
        inteiro numero = -1
        inteiro soma = 0

        enquanto (numero != 0) {
            escreva("Digite um número (0 para encerrar): ")
            leia(numero)
            soma = soma + numero
        }

        escreval("Soma total: ", soma)
    }
}
```

> **Atenção:** o valor sentinela (0 neste caso) também entra na soma. Se isso for um problema, use um `se` antes de somar para ignorá-lo.

---

## 6. Fluxo de execução do `enquanto`

```
        ┌─────────────────────┐
        │   testa condição    │ ◄──────────────┐
        └─────────────────────┘                │
               │         │                    │
          verdadeiro    falso                  │
               │         └──► sai do laço      │
               ▼                               │
        ┌─────────────────────┐                │
        │   executa bloco     │                │
        │ (atualiza condição) │────────────────┘
        └─────────────────────┘
```

---

## 7. Armadilha: o loop infinito

Se a condição **nunca se tornar falsa**, o programa trava para sempre.

```portugol
// ❌ ERRADO — i nunca muda!
inteiro i = 1
enquanto (i <= 5) {
    escreva(i)
    // esqueceu de incrementar i!
}

// ✅ CORRETO
inteiro i = 1
enquanto (i <= 5) {
    escreva(i)
    i = i + 1   // i cresce → chega a 6 → condição fica falsa
}
```

**Regra de ouro:** sempre garanta que algo dentro do bloco modifique a variável usada na condição.

---

## 8. Comparação completa: `para` vs `enquanto`

```portugol
// Mesma lógica — contar de 1 a 5 — escrita das duas formas:

// com para:
para(inteiro i = 1; i <= 5; i++) {
    escreva(i)
}

// com enquanto:
inteiro i = 1
enquanto (i <= 5) {
    escreva(i)
    i = i + 1
}
```

Ambos produzem a mesma saída. A escolha depende do contexto — quando o número de repetições é fixo, `para` é mais legível; quando depende de uma condição dinâmica, `enquanto` é mais adequado.

---

## 9. Resumo

| Conceito | Exemplo |
| :--- | :--- |
| Laço básico | `enquanto (i <= N) { ... i = i + 1 }` |
| Validação de entrada | Inicialize com valor inválido, repita até dado correto |
| Sentinela | `enquanto (numero != 0) { leia(numero) }` |
| Evitar loop infinito | Sempre atualize a condição dentro do bloco |

---

📝 **[Ir para os Exercícios](./EXERCICIOS.md)**
