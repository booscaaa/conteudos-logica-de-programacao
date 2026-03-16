# Estrutura de Fluxo de Controle — Condicionais

> "O computador faz exatamente o que você manda. O desafio é saber mandar certo."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-03-estrutura-fluxo-controle/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é uma Estrutura Condicional?

Até agora, seus programas executavam linha por linha, do começo ao fim, sempre da mesma forma. Mas na vida real, as coisas dependem de condições:

```
SE estiver chovendo
   levo guarda-chuva
SENÃO
   vou de sandália
```

Uma **estrutura condicional** permite que o programa **tome decisões** — ele executa um bloco de código ou outro dependendo de uma condição.

### Por que isso é importante?

Imagine um programa de caixa eletrônico:

```
SE o saldo for suficiente
   realize o saque
SENÃO
   exiba "Saldo insuficiente"
```

Sem condicionais, o programa não consegue reagir a situações diferentes. Com elas, o programa fica inteligente.

---

## 2. Operadores de Comparação

Antes de aprender o `se`, precisamos entender como comparar valores. O resultado de uma comparação é sempre **verdadeiro** ou **falso**.

| Operador | Significado       | Exemplo       | Resultado    |
| -------- | ----------------- | ------------- | ------------ |
| `==`     | igual a           | `5 == 5`      | `verdadeiro` |
| `!=`     | diferente de      | `5 != 3`      | `verdadeiro` |
| `>`      | maior que         | `10 > 7`      | `verdadeiro` |
| `<`      | menor que         | `3 < 1`       | `falso`      |
| `>=`     | maior ou igual a  | `5 >= 5`      | `verdadeiro` |
| `<=`     | menor ou igual a  | `4 <= 3`      | `falso`      |

> **Atenção:** Não confunda `=` (atribuição) com `==` (comparação)!
> - `idade = 18` → coloca o valor 18 dentro da variável `idade`
> - `idade == 18` → pergunta: "a idade é igual a 18?"

---

## 3. Operadores Lógicos

Às vezes precisamos combinar mais de uma condição:

| Operador | Significado                        | Exemplo                      | Resultado    |
| -------- | ---------------------------------- | ---------------------------- | ------------ |
| `e`      | E — ambas devem ser verdadeiras    | `5 > 3 e 10 > 7`             | `verdadeiro` |
| `ou`     | OU — basta uma ser verdadeira      | `5 > 3 ou 2 > 10`            | `verdadeiro` |
| `nao`    | NÃO — inverte o resultado          | `nao (5 > 3)`                | `falso`      |

```
Exemplo do dia a dia:

SE (tiver dinheiro e o restaurante estiver aberto)
   vou jantar fora
```

---

## 4. O `se` — A Estrutura Mais Simples

O `se` executa um bloco de código **somente se** a condição for verdadeira. Se for falsa, o bloco é ignorado.

### Sintaxe

```portugol
se (condição) {
    // código executado se a condição for verdadeira
}
```

### Exemplo

```portugol
programa {
    funcao inicio() {
        inteiro idade = 20

        se (idade >= 18) {
            escreval("Você é maior de idade.")
        }

        escreval("Fim do programa.")
    }
}
```

**Saída quando `idade = 20`:**
```
Você é maior de idade.
Fim do programa.
```

**Saída quando `idade = 15`:**
```
Fim do programa.
```

> O `escreval("Fim do programa.")` **sempre** executa — ele está fora do bloco `se`.
> Apenas o que está entre `{ }` é condicional.

### Visualizando o fluxo

```
               INÍCIO
                  │
                  ▼
         ┌────────────────┐
         │  idade >= 18?  │
         └────────────────┘
              /      \
           SIM        NÃO
            │          │
            ▼          │
    ┌──────────────┐   │
    │ "Maior de    │   │
    │  idade"      │   │
    └──────────────┘   │
            │          │
            └────┬─────┘
                 ▼
        "Fim do programa."
                 │
               FIM
```

---

## 5. O `senao` — O Plano B

O `senao` define o que acontece quando a condição do `se` é **falsa**. É o "caso contrário".

### Sintaxe

```portugol
se (condição) {
    // executado se a condição for verdadeira
} senao {
    // executado se a condição for falsa
}
```

> **Importante:** O `senao` **não tem condição própria**. Ele simplesmente executa quando o `se` não executou.

### Exemplo

```portugol
programa {
    funcao inicio() {
        inteiro idade

        escreva("Digite sua idade: ")
        leia(idade)

        se (idade >= 18) {
            escreval("Acesso permitido.")
        } senao {
            escreval("Acesso negado. Você é menor de idade.")
        }
    }
}
```

**Saída quando `idade = 25`:**
```
Acesso permitido.
```

**Saída quando `idade = 16`:**
```
Acesso negado. Você é menor de idade.
```

### Visualizando o fluxo

```
               INÍCIO
                  │
              leia(idade)
                  │
                  ▼
         ┌────────────────┐
         │  idade >= 18?  │
         └────────────────┘
              /      \
           SIM        NÃO
            │          │
            ▼          ▼
    ┌──────────────┐  ┌──────────────────────────┐
    │  "Acesso     │  │ "Acesso negado. Você é   │
    │  permitido." │  │  menor de idade."         │
    └──────────────┘  └──────────────────────────┘
            │          │
            └────┬─────┘
                 ▼
               FIM
```

> Um `se` com `senao` garante que **sempre** um dos dois blocos vai executar — nunca os dois, nunca nenhum.

---

## 6. O `senao se` — Múltiplas Condições

E quando temos **mais de dois casos possíveis**? Usamos o `senao se`.

### Sintaxe

```portugol
se (condição 1) {
    // executado se condição 1 for verdadeira
} senao se (condição 2) {
    // executado se condição 1 for falsa E condição 2 for verdadeira
} senao se (condição 3) {
    // executado se as anteriores forem falsas E condição 3 for verdadeira
} senao {
    // executado se TODAS as condições anteriores forem falsas
}
```

> O `senao` no final é **opcional** — você pode ter `senao se` sem um `senao` final.

### Exemplo — Classificando a nota

```portugol
programa {
    funcao inicio() {
        real nota

        escreva("Digite a nota (0 a 10): ")
        leia(nota)

        se (nota >= 9.0) {
            escreval("Conceito: A — Excelente!")
        } senao se (nota >= 7.0) {
            escreval("Conceito: B — Bom!")
        } senao se (nota >= 5.0) {
            escreval("Conceito: C — Regular")
        } senao {
            escreval("Conceito: D — Reprovado")
        }
    }
}
```

**Saída quando `nota = 9.5`:**
```
Conceito: A — Excelente!
```

**Saída quando `nota = 7.2`:**
```
Conceito: B — Bom!
```

**Saída quando `nota = 4.8`:**
```
Conceito: D — Reprovado
```

### Como o programa decide?

```
       nota = 7.2
           │
           ▼
    nota >= 9.0?  → NÃO
           │
           ▼
    nota >= 7.0?  → SIM → "Conceito B"
           │
    (para aqui, não
     verifica mais)
```

> **Regra de ouro:** O programa verifica as condições **de cima para baixo** e para assim que encontra a primeira verdadeira. As demais nem são verificadas.

---

## 7. Armadilhas Comuns

### 7.1 Esquecer de usar `==` para comparar

```portugol
// ERRADO — atribui 18 à variável, não compara!
se (idade = 18) {
    ...
}

// CERTO — compara se idade é igual a 18
se (idade == 18) {
    ...
}
```

### 7.2 Ordem errada no `senao se`

```portugol
// PROBLEMA: a primeira condição é tão ampla que o resto nunca executa
se (nota >= 5.0) {
    escreval("Aprovado")         // nota 9.5 cai aqui...
} senao se (nota >= 7.0) {
    escreval("Bom")              // ...e nunca chega aqui!
} senao se (nota >= 9.0) {
    escreval("Excelente")        // ...nem aqui!
}

// CORRETO: sempre verifique do mais restritivo para o menos restritivo
se (nota >= 9.0) {
    escreval("Excelente")
} senao se (nota >= 7.0) {
    escreval("Bom")
} senao se (nota >= 5.0) {
    escreval("Aprovado")
}
```

### 7.3 Blocos sem `{ }`

No Portugol Web Studio, **sempre use chaves** `{ }` para delimitar o bloco do `se`:

```portugol
// EVITE — pode causar confusão mesmo que funcione em alguns casos
se (idade >= 18)
    escreval("Maior de idade")

// PREFIRA — sempre deixe explícito com chaves
se (idade >= 18) {
    escreval("Maior de idade")
}
```

---

## 8. Condicionais com `e` e `ou`

### Combinando condições com `e`

```portugol
programa {
    funcao inicio() {
        real nota
        inteiro faltas

        escreva("Nota: ")
        leia(nota)
        escreva("Faltas: ")
        leia(faltas)

        se (nota >= 5.0 e faltas <= 10) {
            escreval("Aprovado!")
        } senao {
            escreval("Reprovado.")
        }
    }
}
```

> O aluno só é aprovado se tiver nota suficiente **E** faltas dentro do limite.

### Combinando condições com `ou`

```portugol
programa {
    funcao inicio() {
        inteiro opcao

        escreval("Menu:")
        escreval("1 - Continuar")
        escreval("2 - Recomeçar")
        escreval("0 - Sair")
        escreva("Opção: ")
        leia(opcao)

        se (opcao == 1 ou opcao == 2) {
            escreval("Continuando o jogo...")
        } senao se (opcao == 0) {
            escreval("Saindo...")
        } senao {
            escreval("Opção inválida!")
        }
    }
}
```

---

## 9. Condicionais Aninhadas

Você pode colocar um `se` dentro de outro `se`. Isso é chamado de **aninhamento** (ou *nesting*).

```portugol
programa {
    funcao inicio() {
        inteiro idade
        logico temCarteira

        escreva("Idade: ")
        leia(idade)
        escreva("Tem carteira de motorista? (verdadeiro/falso): ")
        leia(temCarteira)

        se (idade >= 18) {
            se (temCarteira) {
                escreval("Pode dirigir!")
            } senao {
                escreval("Tem idade, mas não tem carteira.")
            }
        } senao {
            escreval("Menor de idade. Não pode dirigir.")
        }
    }
}
```

> Use aninhamento com moderação. Muitos níveis deixam o código difícil de ler.
> Em muitos casos, usar `e` é mais simples que aninhar dois `se`.

---

## 10. Exemplos do Mundo Real

### Calculadora de IMC

```portugol
programa {
    funcao inicio() {
        real peso, altura, imc

        escreva("Peso (kg): ")
        leia(peso)
        escreva("Altura (m): ")
        leia(altura)

        imc = peso / (altura * altura)

        escreval("Seu IMC: ", imc)

        se (imc < 18.5) {
            escreval("Classificação: Abaixo do peso")
        } senao se (imc < 25.0) {
            escreval("Classificação: Peso normal")
        } senao se (imc < 30.0) {
            escreval("Classificação: Sobrepeso")
        } senao {
            escreval("Classificação: Obesidade")
        }
    }
}
```

### Verificador de número par ou ímpar

```portugol
programa {
    funcao inicio() {
        inteiro numero

        escreva("Digite um número: ")
        leia(numero)

        se (numero % 2 == 0) {
            escreval(numero, " é PAR")
        } senao {
            escreval(numero, " é ÍMPAR")
        }
    }
}
```

> Lembra do operador `%` (módulo/resto)? Se o resto da divisão por 2 é 0, o número é par!

---

## 11. Exemplos de Código

Os exemplos estão na pasta `exemplos/`:

| Arquivo                                                                       | Descrição                                 |
| ----------------------------------------------------------------------------- | ----------------------------------------- |
| [01_se_simples.por](./exemplos/01_se_simples.por)                             | Uso básico do `se`                        |
| [02_se_senao.por](./exemplos/02_se_senao.por)                                 | `se` e `senao` juntos                     |
| [03_senao_se.por](./exemplos/03_senao_se.por)                                 | Múltiplas condições com `senao se`        |
| [04_condicionais_praticos.por](./exemplos/04_condicionais_praticos.por)       | Exemplos práticos do mundo real           |

---

## 12. Resumo

```
┌──────────────────────────────────────────────────────────────┐
│               ESTRUTURAS CONDICIONAIS                        │
│                                                              │
│  se (condição) { ... }                                       │
│  → Executa apenas se a condição for verdadeira               │
│                                                              │
│  se (condição) { ... } senao { ... }                         │
│  → Executa um bloco OU o outro, nunca os dois                │
│                                                              │
│  se (c1) { ... } senao se (c2) { ... } senao { ... }        │
│  → Verifica condições em sequência, para na primeira         │
│    que for verdadeira                                        │
│                                                              │
│  Operadores de comparação: ==  !=  >  <  >=  <=             │
│  Operadores lógicos:       e   ou  nao                       │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## Exercícios

[EXERCICIOS.md](./EXERCICIOS.md) — 20 exercícios sobre estruturas condicionais.

---

*[Voltar ao início](../../README.md)*
