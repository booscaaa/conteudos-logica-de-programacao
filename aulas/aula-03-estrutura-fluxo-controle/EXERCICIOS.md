# Exercícios — Estrutura de Fluxo de Controle (Condicionais)

---

## `se` Simples

**1.** Peça ao usuário um número inteiro. Se o número for positivo, exiba "Número positivo".

**2.** Peça ao usuário sua nota (real). Se a nota for maior ou igual a 5, exiba "Aprovado!".

**3.** Peça ao usuário sua idade. Se a idade for maior ou igual a 18, exiba "Pode votar".

**4.** Peça ao usuário um número. Se o número for igual a zero, exiba "O número é zero".

**5.** Peça ao usuário dois números inteiros. Se o primeiro for maior que o segundo, exiba "O primeiro é maior".

---

## `se` e `senao`

**6.** Peça ao usuário um número inteiro. Exiba "Par" se for par, "Ímpar" caso contrário.
> Dica: use o operador `%` (resto da divisão)

**7.** Peça ao usuário sua nota. Exiba "Aprovado" se for maior ou igual a 5, ou "Reprovado" caso contrário.

**8.** Peça ao usuário dois números. Exiba qual deles é o maior. Se forem iguais, exiba "São iguais".

**9.** Peça ao usuário um número. Exiba se ele é positivo ou negativo. Se for zero, exiba "É zero".

**10.** Peça ao usuário a temperatura em graus Celsius. Se for maior que 30, exiba "Calor!". Caso contrário, exiba "Temperatura agradável".

**11.** Peça ao usuário um número inteiro. Exiba "Divisível por 3" se o resto da divisão por 3 for zero, caso contrário exiba "Não é divisível por 3".

**12.** Pergunte ao usuário se está chovendo (verdadeiro/falso). Se estiver, exiba "Leve guarda-chuva". Senão, exiba "Aproveite o sol!".

---

## `senao se` — Múltiplas Condições

**13.** Peça ao usuário uma nota de 0 a 10 e classifique:
- 9 a 10 → "Excelente"
- 7 a 8.9 → "Bom"
- 5 a 6.9 → "Regular"
- abaixo de 5 → "Insuficiente"

**14.** Peça ao usuário um número entre 1 e 7 (dia da semana) e exiba o nome do dia:
- 1 → Segunda-feira
- 2 → Terça-feira
- 3 → Quarta-feira
- 4 → Quinta-feira
- 5 → Sexta-feira
- 6 → Sábado
- 7 → Domingo
- outro → "Dia inválido"

**15.** Peça ao usuário a velocidade de um veículo e classifique a multa:
- até 40 km/h → "Sem multa"
- 41 a 60 km/h → "Multa leve"
- 61 a 80 km/h → "Multa grave"
- acima de 80 km/h → "Multa gravíssima"

**16.** Peça ao usuário a idade e classifique:
- 0 a 12 → "Criança"
- 13 a 17 → "Adolescente"
- 18 a 59 → "Adulto"
- 60 ou mais → "Idoso"

---

## Combinando Condições (`e`, `ou`)

**17.** Peça a nota e o número de faltas de um aluno. Aprove-o se a nota for >= 5 **e** as faltas forem <= 15. Caso contrário, reprove-o.

**18.** Peça ao usuário um número inteiro. Verifique se ele é múltiplo de 2 **e** de 3 ao mesmo tempo (ou seja, múltiplo de 6).
> Dica: `numero % 2 == 0 e numero % 3 == 0`

**19.** Peça ao usuário um caractere. Exiba "É vogal" se for `a`, `e`, `i`, `o` ou `u` (minúsculas). Caso contrário, exiba "É consoante".

---

## Desafio

**20.** Crie uma calculadora simples. Peça ao usuário:
- O primeiro número (real)
- O operador (`+`, `-`, `*`, `/`)
- O segundo número (real)

Calcule e exiba o resultado. Se o operador for `/` e o segundo número for zero, exiba "Erro: divisão por zero!". Se o operador for inválido, exiba "Operador desconhecido".

---

*[Voltar ao conteúdo](./README.md)*
