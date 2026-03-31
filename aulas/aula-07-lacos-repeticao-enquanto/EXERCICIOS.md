# Exercícios: Laço de Repetição `enquanto`

Pratique o uso do laço `enquanto` com estes exercícios em **Portugol Studio**.

---

## 1. Contador Manual

Crie um programa que:
1. Leia um número inteiro **início** e um número inteiro **fim** do usuário.
2. Exiba todos os números de início até fim, um por linha, usando o laço `enquanto`.

**Exemplo de entrada:** `início = 3`, `fim = 7`
**Saída esperada:**
```
3
4
5
6
7
```

> **Dica:** declare a variável de controle antes do laço e atualize-a dentro do bloco.

---

## 2. Nota Válida

Crie um programa que fique pedindo uma nota ao usuário até que ele digite um valor **entre 0 e 10** (inclusive). Após aceitar a nota, exiba `"Nota registrada: X"`.

**Exemplo:**
```
Digite a nota: -3
Valor inválido! Digite a nota: 15
Valor inválido! Digite a nota: 8
Nota registrada: 8
```

> **Dica:** inicialize a variável com um valor que garanta a entrada no laço logo de início (ex: `-1`).

---

## 3. Somatório com Sentinela

Crie um programa que leia números inteiros do usuário repetidamente. Quando o usuário digitar **0**, o programa deve parar e exibir a **soma de todos os números digitados** (sem contar o 0).

**Exemplo:**
```
Digite um número (0 para parar): 5
Digite um número (0 para parar): 3
Digite um número (0 para parar): 8
Digite um número (0 para parar): 0
Soma total: 16
```

> **Dica:** use um `se` para não somar o valor 0 antes de acumulá-lo, ou acumule antes de ler o próximo.

---

## 4. Contador de Positivos e Negativos

Crie um programa que leia números do usuário até que ele digite **0**. Ao final, exiba:
- Quantos números positivos foram digitados.
- Quantos números negativos foram digitados.

**Exemplo:**
```
Digite: 4
Digite: -2
Digite: 7
Digite: -5
Digite: -1
Digite: 0
Positivos: 2
Negativos: 3
```

---

## 5. Adivinhe o Número

Crie um jogo onde o programa define um número secreto (ex: `7`) e o usuário tenta adivinhar. A cada chute errado, exiba `"Muito alto!"` ou `"Muito baixo!"`. Quando acertar, exiba `"Parabéns! Você acertou em X tentativas."`.

**Exemplo:**
```
Adivinhe o número: 3
Muito baixo!
Adivinhe o número: 10
Muito alto!
Adivinhe o número: 7
Parabéns! Você acertou em 3 tentativas.
```

> **Dica:** use um contador de tentativas que incrementa a cada iteração.

---

## 6. Senha Correta

Crie um programa que defina uma senha fixa (ex: `1234`) e fique pedindo ao usuário para digitá-la. Enquanto errar, exiba `"Senha incorreta, tente novamente."`. Quando acertar, exiba `"Acesso liberado!"`.

**Exemplo:**
```
Digite a senha: 0000
Senha incorreta, tente novamente.
Digite a senha: 9999
Senha incorreta, tente novamente.
Digite a senha: 1234
Acesso liberado!
```

---

## 7. Maior Número da Sequência

Crie um programa que leia números do usuário até que ele digite **-1** (sentinela). Ao final, exiba o **maior número** digitado (desconsiderando o -1).

**Exemplo:**
```
Digite um número (-1 para parar): 8
Digite um número (-1 para parar): 3
Digite um número (-1 para parar): 15
Digite um número (-1 para parar): 6
Digite um número (-1 para parar): -1
Maior número: 15
```

> **Dica:** crie uma variável `maior` e compare cada número lido com ela, atualizando quando encontrar um valor maior.

---

### Desafio Extra

Modifique o **Exercício 6** para limitar as tentativas a **3**. Se o usuário errar as 3 vezes, exiba `"Conta bloqueada!"` em vez de continuar pedindo a senha.

**Dica:** use uma segunda variável para contar as tentativas e combine as duas condições no `enquanto` usando o operador `e`.
