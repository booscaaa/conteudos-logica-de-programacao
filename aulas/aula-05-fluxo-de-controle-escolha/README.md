# Fluxo de Controle: Escolha (Switch Case)

> "Quando temos muitas opções para um mesmo valor, o `escolha` é o caminho mais elegante e organizado."

📊 **[Abrir apresentação de slides](https://htmlpreview.github.io/?https://github.com/booscaaa/conteudos-logica-de-programacao/blob/main/aulas/aula-05-fluxo-de-controle-escolha/slides.html)** — navegue com as setas `←` `→` do teclado.

---

## 1. O que é a estrutura `escolha`?

A estrutura **escolha** (conhecida como `switch` em outras linguagens) é uma forma simplificada de escrever múltiplos `se ... senao se`. Ela é ideal quando você precisa testar o valor de uma **única variável** contra vários resultados possíveis.

### Por que usar?
- **Clareza**: O código fica muito mais legível.
- **Organização**: Evita o "ninho de se" (múltiplas condições encadeadas).
- **Desempenho**: Em alguns casos, o computador processa essa estrutura de forma mais eficiente.

---

## 2. Sintaxe em Portugol

```portugol
escolha (variavel) {
  caso valor1:
    // código se for valor1
    pare
  caso valor2:
    // código se for valor2
    pare
  caso contrario:
    // código se não for nenhum dos anteriores
}
```

### Componentes principais:
1.  **`escolha`**: Define qual variável será analisada.
2.  **`caso`**: Define um valor possível para a variável.
3.  **`pare`**: **CRÍTICO.** Interrompe a execução e sai do bloco. Se você esquecer o `pare`, o computador executará o próximo `caso` também!
4.  **`caso contrario`**: Opcional. Executa se nenhum dos valores anteriores for correspondido (como o `senao` final).

---

## 3. Comparação: `se` vs `escolha`

Imagine que você quer verificar o número de um mês:

| Com `se / senao se` | Com `escolha` |
| :--- | :--- |
| `se (mes == 1) { ... }` | `escolha (mes) {` |
| `senao se (mes == 2) { ... }` | `  caso 1: ... pare` |
| `senao se (mes == 3) { ... }` | `  caso 2: ... pare` |
| `senao { ... }` | `  caso contrario: ...` |

> **Dica**: Use `escolha` quando você tem valores exatos (números inteiros ou caracteres). Use `se` quando precisar de intervalos (ex: `idade > 18`) ou condições complexas com `e` / `ou`.

---

## 4. O perigo de esquecer o `pare`

Se você não colocar o `pare`, acontece o que chamamos de *fall-through* (queda). O programa "escorrega" para os próximos casos.

```portugol
escolha (nota) {
  caso 10:
    escreva("Excelente!") // Sem pare aqui...
  caso 9:
    escreva("Muito bom!")
    pare
}
// Se a nota for 10, ele vai escrever "Excelente!" E "Muito bom!"
```

---

## 5. Exemplos de Código

Os exemplos estão na pasta `exemplos/`:

| Arquivo | Descrição |
| :--- | :--- |
| [01_dia_semana.por](./exemplos/01_dia_semana.por) | Converte número de 1 a 7 em nome do dia. |
| [02_menu_opcoes.por](./exemplos/02_menu_opcoes.por) | Cria um menu interativo de banco. |
| [03_calculadora.por](./exemplos/03_calculadora.por) | Escolha baseada em caracteres (+, -, *, /). |
| [04_meses_ano.por](./exemplos/04_meses_ano.por) | Retorna o nome do mês e quantos dias ele tem. |

---

## 6. Exercícios

[EXERCICIOS.md](./EXERCICIOS.md) — Pratique a estrutura escolha com cenários do mundo real.

---

_[Voltar ao início](../../README.md)_
