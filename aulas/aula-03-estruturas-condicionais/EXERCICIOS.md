# Exercícios — Estruturas de Fluxo de Controle

---

## Estrutura `se` e `se/senao`

**1.** Leia um número inteiro. Se for positivo, exiba `"Positivo"`. Se for negativo, exiba `"Negativo"`. Se for zero, exiba `"Zero"`.

**2.** Leia a temperatura em Celsius. Se for maior ou igual a 36 e menor ou igual a 37.5, exiba `"Temperatura normal"`. Caso contrário, exiba `"Fora do normal"`.

**3.** Leia dois números reais. Exiba o maior deles. Se forem iguais, exiba `"Números iguais"`.

**4.** Leia a idade de uma pessoa. Exiba se ela é maior de idade (`>= 18`) ou menor de idade.

**5.** Leia um número inteiro. Verifique se ele é par ou ímpar e exiba a resposta.
_(Dica: use o operador `%` — se o resto da divisão por 2 for 0, é par)_

**6.** Leia o salário de um funcionário. Se for menor que R$ 1.500, aplique um aumento de 20%. Se for entre R$ 1.500 e R$ 3.000, aplique 10%. Se for maior que R$ 3.000, aplique 5%. Exiba o salário original e o novo salário.

**7.** Leia dois números inteiros A e B. Exiba:
- `"A > B"` se A for maior
- `"B > A"` se B for maior
- `"A == B"` se forem iguais

**8.** Um aluno precisa de nota mínima 7 para ser aprovado. Leia a nota (0 a 10) e exiba `"Aprovado"` ou `"Reprovado"`.

**9.** Leia o preço de um produto. Se o preço for maior que R$ 100, aplique 15% de desconto. Exiba o preço original e o preço com desconto.

**10.** Leia um número inteiro e exiba se ele é divisível por 3, por 5, ou por ambos.

---

## Estrutura `se/senao se/senao`

**11.** Leia a nota de um aluno (0 a 100) e exiba o conceito:
```
90 a 100  → Conceito A
75 a 89   → Conceito B
60 a 74   → Conceito C
50 a 59   → Conceito D
0 a 49    → Conceito F
```

**12.** Leia a idade de uma pessoa e classifique:
```
0 a 11   → Criança
12 a 17  → Adolescente
18 a 59  → Adulto
60+      → Idoso
```

**13.** Leia o IMC de uma pessoa e exiba a classificação:
```
< 18.5           → Abaixo do peso
18.5 a 24.9      → Peso normal
25.0 a 29.9      → Sobrepeso
30.0 a 34.9      → Obesidade grau I
35.0 a 39.9      → Obesidade grau II
>= 40.0          → Obesidade grau III
```

**14.** Leia a velocidade de um veículo em km/h em uma via de 80 km/h e exiba:
```
<= 80         → Dentro do limite
81 a 100      → Infração leve (multa R$ 130)
101 a 120     → Infração média (multa R$ 195)
> 120         → Infração grave (multa R$ 293 + suspensão)
```

**15.** Leia um número de 1 a 12 e exiba o mês correspondente e a estação do ano no hemisfério sul:
- Verão: dezembro, janeiro, fevereiro
- Outono: março, abril, maio
- Inverno: junho, julho, agosto
- Primavera: setembro, outubro, novembro

**16.** Calcule o imposto de renda sobre um salário anual:
```
Até R$ 24.511,92        → Isento
R$ 24.511,93 a 33.919,80 → 7,5%
R$ 33.919,81 a 45.012,60 → 15%
R$ 45.012,61 a 55.976,16 → 22,5%
Acima de R$ 55.976,16    → 27,5%
```

**17.** Leia três números reais e exiba-os em ordem crescente, sem usar vetores.
_(Dica: compare e troque os valores)_

---

## Estrutura `escolha/caso`

**18.** Leia um número de 1 a 7 e exiba o nome do dia da semana correspondente. Se o número for inválido, exiba `"Dia inválido"`.

**19.** Crie um menu de calculadora:
```
1 - Somar
2 - Subtrair
3 - Multiplicar
4 - Dividir
```
Leia a opção, depois leia dois números e execute a operação escolhida. Para a opção 4, verifique se o divisor é zero.

**20.** Leia um número de 1 a 4 e exiba a estação do ano correspondente (considerando o hemisfério sul):
```
1 → Verão
2 → Outono
3 → Inverno
4 → Primavera
```

**21.** Crie um conversor de notas: leia uma letra (`'A'`, `'B'`, `'C'`, `'D'`, `'F'`) usando `escolha/caso` e exiba a faixa de pontuação e a situação (aprovado/reprovado).

---

## Condicionais com Operadores Lógicos

**22.** Leia o ano de nascimento e o ano atual. Calcule a idade e verifique se a pessoa pode votar (>= 16) e se o voto é obrigatório (entre 18 e 70 inclusive). Exiba as informações formatadas.

**23.** Uma empresa dá desconto progressivo sobre compras:
```
< R$ 100                 → sem desconto
R$ 100 a R$ 499          → 5% de desconto
R$ 500 a R$ 999          → 10% de desconto
>= R$ 1.000              → 15% de desconto
```
Além disso, clientes com cadastro premium recebem mais 5% de desconto adicional. Leia o valor da compra e se o cliente é premium (`logico`). Calcule e exiba o desconto total e o valor final.

**24.** Sistema de login simples: declare (no código) um usuário e uma senha corretos. Leia o usuário e a senha digitados pelo usuário. Se ambos estiverem corretos, exiba `"Acesso concedido!"`. Se o usuário estiver correto mas a senha errada, exiba `"Senha incorreta."`. Se o usuário estiver errado, exiba `"Usuário não encontrado."`.

---

_[Voltar ao conteúdo](./README.md)_
