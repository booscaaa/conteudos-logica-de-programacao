# Bibliotecas

> "Por que reinventar a roda? Use uma biblioteca e foque no que importa."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-10-bibliotecas/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é uma biblioteca?

Uma **biblioteca** é uma coleção de funções prontas que você pode usar no seu programa sem precisar escrevê-las do zero. Alguém já resolveu o problema antes — você só precisa **incluir** a biblioteca e **chamar** a função.

```portugol
inclua biblioteca Matematica --> mat

programa {
    funcao inicio() {
        real raiz = mat.raiz(25.0)
        escreva("Raiz de 25: ", raiz)   // 5.0
    }
}
```

---

## 2. Por que usar bibliotecas?

| Sem biblioteca | Com biblioteca |
| :--- | :--- |
| Você escreve cada cálculo manualmente | Chama uma função pronta e testada |
| Mais código, mais chance de erro | Menos código, mais confiável |
| Difícil de manter | Fácil de ler e manter |

---

## 3. Como incluir uma biblioteca no Portugol

A instrução `inclua biblioteca` fica **antes** do bloco `programa { }` e você define um **alias** (apelido) com `-->`:

```portugol
inclua biblioteca Matematica --> mat
inclua biblioteca Texto      --> txt
inclua biblioteca Tipos      --> tip
inclua biblioteca Util       --> util

programa {
    funcao inicio() {
        // usa o alias para chamar as funções
        real r = mat.raiz(9.0)
        cadeia s = txt.maiusculo("ola")
    }
}
```

> **Regra:** `alias.nomeDaFuncao(argumentos)`

---

## 4. Biblioteca Matematica

Funções matemáticas para cálculos numéricos.

| Função | O que faz | Exemplo |
| :--- | :--- | :--- |
| `mat.raiz(n)` | Raiz quadrada | `mat.raiz(16.0)` → `4.0` |
| `mat.potencia(base, exp)` | Potenciação | `mat.potencia(2.0, 8.0)` → `256.0` |
| `mat.abs(n)` | Valor absoluto | `mat.abs(-7)` → `7` |
| `mat.arredondar(n, casas)` | Arredonda decimais | `mat.arredondar(3.567, 2)` → `3.57` |
| `mat.teto(n)` | Arredonda pra cima | `mat.teto(4.1)` → `5` |
| `mat.chao(n)` | Arredonda pra baixo | `mat.chao(4.9)` → `4` |
| `mat.logaritmo(n, base)` | Logaritmo | `mat.logaritmo(100.0, 10.0)` → `2.0` |
| `mat.seno(n)` | Seno (radianos) | `mat.seno(0.0)` → `0.0` |
| `mat.cosseno(n)` | Cosseno (radianos) | `mat.cosseno(0.0)` → `1.0` |

---

## 5. Biblioteca Texto

Funções para manipular cadeias de caracteres.

| Função | O que faz | Exemplo |
| :--- | :--- | :--- |
| `txt.maiusculo(s)` | Converte para maiúsculas | `txt.maiusculo("ola")` → `"OLA"` |
| `txt.minusculo(s)` | Converte para minúsculas | `txt.minusculo("OLA")` → `"ola"` |
| `txt.tamanho(s)` | Número de caracteres | `txt.tamanho("joao")` → `4` |
| `txt.subCadeia(s, ini, fim)` | Extrai trecho | `txt.subCadeia("joao", 0, 2)` → `"joa"` |
| `txt.posicao(s, sub)` | Posição de uma subcadeia | `txt.posicao("joao silva", "silva")` → `5` |
| `txt.substituir(s, de, para)` | Substitui texto | `txt.substituir("ola mundo", "mundo", "turma")` → `"ola turma"` |
| `txt.apararEspacos(s)` | Remove espaços das bordas | `txt.apararEspacos("  ola  ")` → `"ola"` |
| `txt.concatenar(s1, s2)` | Une duas cadeias | `txt.concatenar("ola ", "turma")` → `"ola turma"` |

---

## 6. Biblioteca Tipos

Conversão entre tipos de dados.

| Função | O que faz | Exemplo |
| :--- | :--- | :--- |
| `tip.inteiro(real)` | Real → Inteiro (trunca) | `tip.inteiro(9.99)` → `9` |
| `tip.real(inteiro)` | Inteiro → Real | `tip.real(7)` → `7.0` |
| `tip.cadeia(inteiro)` | Inteiro → Cadeia | `tip.cadeia(42)` → `"42"` |
| `tip.cadeia(real)` | Real → Cadeia | `tip.cadeia(3.14)` → `"3.14"` |
| `tip.inteiro(cadeia)` | Cadeia → Inteiro | `tip.inteiro("10")` → `10` |
| `tip.real(cadeia)` | Cadeia → Real | `tip.real("8.5")` → `8.5` |

> **Atenção:** se a cadeia não puder ser convertida (ex: `tip.inteiro("abc")`), o programa lança erro. Garanta que o valor é válido antes de converter.

---

## 7. Biblioteca Util

Utilitários gerais.

| Função | O que faz | Exemplo |
| :--- | :--- | :--- |
| `util.sorteia(min, max)` | Número aleatório inteiro | `util.sorteia(1, 6)` → `1` a `6` |
| `util.aguarde(ms)` | Pausa em milissegundos | `util.aguarde(1000)` → pausa 1 segundo |
| `util.mostrarCaixa(msg)` | Exibe caixa de diálogo | `util.mostrarCaixa("Fim!")` |
| `util.limpar()` | Limpa o console | — |

---

## 8. Bibliotecas em outras linguagens

O conceito existe em **toda linguagem de programação**:

| Linguagem | Como incluir | Exemplo de uso |
| :--- | :--- | :--- |
| **Portugol** | `inclua biblioteca Matematica --> mat` | `mat.raiz(9.0)` |
| **Python** | `import math` | `math.sqrt(9)` |
| **JavaScript** | nativo (Math global) | `Math.sqrt(9)` |
| **Java** | `import java.lang.Math;` | `Math.sqrt(9)` |
| **C** | `#include <math.h>` | `sqrt(9)` |

---

## 9. Exemplos práticos

### Calculadora científica

```portugol
inclua biblioteca Matematica --> mat

programa {
    funcao inicio() {
        real numero
        escreva("Digite um número: ")
        leia(numero)
        escreva("Raiz quadrada: ", mat.raiz(numero))
        escreva("Dobrado ao quadrado: ", mat.potencia(numero * 2.0, 2.0))
        escreva("Valor absoluto: ", mat.abs(tip.inteiro(numero)))
    }
}
```

### Formatação de nome

```portugol
inclua biblioteca Texto --> txt

programa {
    funcao inicio() {
        cadeia nome
        escreva("Digite seu nome: ")
        leia(nome)
        cadeia formatado = txt.maiusculo(txt.apararEspacos(nome))
        escreva("Nome formatado: ", formatado)
        escreva("Número de letras: ", txt.tamanho(formatado))
    }
}
```

---

## 10. Resumo

| Biblioteca | Finalidade |
| :--- | :--- |
| `Matematica` | Cálculos matemáticos (raiz, potência, abs, arredondamento) |
| `Texto` | Manipulação de cadeias (maiúsculo, tamanho, subCadeia) |
| `Tipos` | Conversão entre tipos (inteiro, real, cadeia) |
| `Util` | Utilitários (sorteia, aguarde, mostrarCaixa) |

---

📝 **[Ir para os Exercícios](./EXERCICIOS.md)**
