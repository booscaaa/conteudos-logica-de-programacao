# Funções

> "Uma função é como uma receita: você a escreve uma vez e pode usá-la quantas vezes quiser."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-09-funcoes/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é uma função?

Uma **função** é um bloco de código com nome próprio que executa uma tarefa específica. Em vez de repetir o mesmo código várias vezes, você o escreve uma única vez dentro de uma função e o **chama** sempre que precisar.

```portugol
programa {
    funcao inicio() {
        exibirSeparador()   // chama a função
        escreva("Nome: João")
        exibirSeparador()   // reutiliza a mesma função
        escreva("Nome: Maria")
        exibirSeparador()
    }

    funcao exibirSeparador() {
        escreva("-------------------")
    }
}
```

---

## 2. Função sem parâmetros e sem retorno

A forma mais simples de função é o **procedimento**: não recebe dados nem devolve resultado — apenas executa ações.

```portugol
// Declaração
funcao saudar() {
    escreva("Olá! Bem-vindo ao sistema.")
    escreva("Pressione ENTER para continuar.")
}

// Chamada
funcao inicio() {
    saudar()
    // ... resto do programa
}
```

---

## 3. Função com parâmetros

**Parâmetros** são variáveis que a função recebe quando é chamada, tornando-a mais genérica e reutilizável.

```portugol
funcao saudarPessoa(cadeia nome, inteiro idade) {
    escreva("Olá, ", nome, "!")
    escreva("Você tem ", idade, " anos.")
}

funcao inicio() {
    saudarPessoa("João", 20)
    saudarPessoa("Maria", 17)
    saudarPessoa("Pedro", 25)
}
```

> **Importante:** os valores passados na chamada (`"João"`, `20`) são copiados para os parâmetros da função. Alterar o parâmetro dentro da função **não altera** a variável original.

---

## 4. Função com retorno

Quando a função precisa **devolver um resultado**, declaramos o tipo de retorno antes do nome e usamos `retorne`:

```portugol
funcao inteiro somar(inteiro a, inteiro b) {
    retorne a + b
}

funcao real calcularMedia(real n1, real n2, real n3) {
    retorne (n1 + n2 + n3) / 3.0
}

funcao inicio() {
    inteiro resultado = somar(4, 7)
    escreva("Soma: ", resultado)          // Soma: 11

    real media = calcularMedia(8.0, 6.0, 9.5)
    escreva("Média: ", media)             // Média: 7.83...
}
```

---

## 5. Como a chamada funciona (fluxo de execução)

```
inicio() chama somar(4, 7)
        │
        ▼
┌─────────────────────────────┐
│  funcao inteiro somar(a, b) │
│    a = 4, b = 7             │
│    retorne 4 + 7 → 11       │
└─────────────────────────────┘
        │
        ▼ retorna 11
inicio() continua: resultado = 11
```

1. A execução **pula** para a função chamada.
2. A função executa seus comandos.
3. Ao encontrar `retorne`, a função termina e devolve o valor.
4. A execução **volta** para onde a função foi chamada.

---

## 6. Escopo de variáveis

Variáveis declaradas **dentro** de uma função só existem enquanto ela executa:

```portugol
funcao calcular() {
    inteiro x = 10   // x só existe aqui dentro
    escreva(x)
}

funcao inicio() {
    calcular()
    // escreva(x)   ← ERRO: x não existe fora de calcular()
}
```

> Cada chamada de função cria seu próprio **espaço de memória** (escopo local). Ao terminar, esse espaço é liberado.

---

## 7. Exemplos práticos

### Máximo entre dois números

```portugol
funcao inteiro maximo(inteiro a, inteiro b) {
    se (a > b) {
        retorne a
    } senao {
        retorne b
    }
}

funcao inicio() {
    escreva(maximo(10, 7))   // 10
    escreva(maximo(3, 15))   // 15
}
```

### Verificar se é par

```portugol
funcao logico ehPar(inteiro n) {
    retorne (n % 2 == 0)
}

funcao inicio() {
    se (ehPar(8)) {
        escreva("8 é par")
    }
    se (nao ehPar(5)) {
        escreva("5 é ímpar")
    }
}
```

---

## 8. Resumo

| Conceito | Exemplo |
| :--- | :--- |
| Sem parâmetros, sem retorno | `funcao exibir()` |
| Com parâmetros | `funcao saudar(cadeia nome)` |
| Com retorno | `funcao inteiro somar(inteiro a, inteiro b)` |
| Chamada | `saudar("João")` |
| Retorno de valor | `retorne a + b` |
| Escopo | Variáveis locais existem apenas dentro da função |
| Reutilização | Chame a mesma função quantas vezes precisar |

---

📝 **[Ir para os Exercícios](./EXERCICIOS.md)**
