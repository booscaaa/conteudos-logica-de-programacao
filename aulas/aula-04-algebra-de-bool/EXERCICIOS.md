# Exercícios — Álgebra de Bool

> ✏️ Todos os exercícios abaixo devem ser resolvidos **no papel**, sem usar computador.

---

## Parte 1 — Tabelas-Verdade Simples

**1.** Complete a tabela-verdade do operador **AND (e)**:

| A   | B   | A `e` B |
| --- | --- | ------- |
| V   | V   |         |
| V   | F   |         |
| F   | V   |         |
| F   | F   |         |

---

**2.** Complete a tabela-verdade do operador **OR (ou)**:

| A   | B   | A `ou` B |
| --- | --- | -------- |
| V   | V   |          |
| V   | F   |          |
| F   | V   |          |
| F   | F   |          |

---

**3.** Complete a tabela-verdade do operador **NOT (nao)**:

| A   | `nao` A |
| --- | ------- |
| V   |         |
| F   |         |

---

**4.** Combine os operadores e complete a tabela:

| A   | B   | `nao` A | `nao` B | `nao` A `e` `nao` B |
| --- | --- | ------- | ------- | ------------------- |
| V   | V   |         |         |                     |
| V   | F   |         |         |                     |
| F   | V   |         |         |                     |
| F   | F   |         |         |                     |

---

**5.** Complete a tabela para a expressão `A `ou` (`nao` B)`:

| A   | B   | `nao` B | A `ou` (`nao` B) |
| --- | --- | ------- | ---------------- |
| V   | V   |         |                  |
| V   | F   |         |                  |
| F   | V   |         |                  |
| F   | F   |         |                  |

---

## Parte 2 — Tabelas com 3 Variáveis

**6.** Complete a tabela-verdade para `A `e`B`e` C`:

| A   | B   | C   | A `e` B `e` C |
| --- | --- | --- | ------------- |
| V   | V   | V   |               |
| V   | V   | F   |               |
| V   | F   | V   |               |
| V   | F   | F   |               |
| F   | V   | V   |               |
| F   | V   | F   |               |
| F   | F   | V   |               |
| F   | F   | F   |               |

---

**7.** Complete a tabela para `A `ou`B`ou` C`:

| A   | B   | C   | A `ou` B `ou` C |
| --- | --- | --- | --------------- |
| V   | V   | V   |                 |
| V   | V   | F   |                 |
| V   | F   | V   |                 |
| V   | F   | F   |                 |
| F   | V   | V   |                 |
| F   | V   | F   |                 |
| F   | F   | V   |                 |
| F   | F   | F   |                 |

---

**8.** Complete a tabela para `(A `e`B)`ou` C`. Preencha passo a passo:

| A   | B   | C   | A `e` B | (A `e` B) `ou` C |
| --- | --- | --- | ------- | ---------------- |
| V   | V   | V   |         |                  |
| V   | V   | F   |         |                  |
| V   | F   | V   |         |                  |
| V   | F   | F   |         |                  |
| F   | V   | V   |         |                  |
| F   | V   | F   |         |                  |
| F   | F   | V   |         |                  |
| F   | F   | F   |         |                  |

---

**9.** Complete a tabela para `A `e` (`nao`B`ou` C)`. Use colunas auxiliares:

| A   | B   | C   | `nao` B | `nao` B `ou` C | A `e` (`nao` B `ou` C) |
| --- | --- | --- | ------- | -------------- | ---------------------- |
| V   | V   | V   |         |                |                        |
| V   | V   | F   |         |                |                        |
| V   | F   | V   |         |                |                        |
| V   | F   | F   |         |                |                        |
| F   | V   | V   |         |                |                        |
| F   | V   | F   |         |                |                        |
| F   | F   | V   |         |                |                        |
| F   | F   | F   |         |                |                        |

---

## Parte 3 — Avalie as Expressões

Dados: **A = V, B = F, C = V**. Calcule cada expressão sem montar a tabela completa:

**10.** `A e B` = \_\_\_

**11.** `A ou B` = \_\_\_

**12.** `nao B` = \_\_\_

**13.** `(nao B) e C` = \_\_\_

**14.** `A ou (B e C)` = \_\_\_

**15.** `(A e B) ou (A e C)` = \_\_\_

**16.** `nao (A ou B)` = \_\_\_

**17.** `nao A e nao B e nao C` = \_\_\_

**18.** `(A ou B) e (B ou C)` = \_\_\_

**19.** `nao (A e B e C)` = \_\_\_

---

## Parte 4 — XOR (OU Exclusivo)

O **XOR** retorna **V** somente quando os operandos são **diferentes**.

**20.** Complete a tabela do XOR:

| A   | B   | A XOR B |
| --- | --- | ------- |
| V   | V   |         |
| V   | F   |         |
| F   | V   |         |
| F   | F   |         |

**21.** Escreva a expressão booleana equivalente ao XOR usando apenas AND, OR e NOT:

`A XOR B =` **********************\_\_\_**********************

_(Dica: verdadeiro quando um é V e o outro é F)_

---

## Parte 5 — Expressões do Cotidiano

Para cada situação, escreva a **expressão booleana** correspondente e calcule o resultado com os valores dados.

**22.** Uma pessoa **pode dirigir** se tiver **18 anos ou mais** E **tiver habilitação**.

- `idade >= 18` = V, `tem_habilitacao` = V
- Expressão: ****\_\_\_****
- Resultado: \_\_\_

---

**23.** Uma loja oferece **desconto** para quem tiver **menos de 12 anos** OU **mais de 60 anos**.

- `idade < 12` = F, `idade > 60` = F
- Expressão: ****\_\_\_****
- Resultado: \_\_\_

---

**24.** O alarme **NÃO dispara** se a porta estiver **fechada** E a janela estiver **fechada**.

- `porta_aberta` = F, `janela_aberta` = V
- Expressão para "alarme não dispara": ****\_\_\_****
- Resultado: \_\_\_

---

**25.** Um sistema dispara alerta **CRÍTICO** se a temperatura for **acima de 40°C** E o resfriador estiver **desligado**, **OU** se faltar energia.

- `temp > 40` = V, `resfriador_ligado` = F, `sem_energia` = F
- Expressão: ****\_\_\_****
- Resultado: \_\_\_

---

_[Voltar ao conteúdo](./README.md)_
