# Exercícios: Bibliotecas

Pratique o uso das **bibliotecas do Portugol Studio** com estes exercícios.

---

## 1. Calculadora Científica

Use a biblioteca `Matematica` para criar uma calculadora que:

1. Leia um número real do usuário.
2. Exiba:
   - A raiz quadrada do número
   - O número elevado ao quadrado (`potencia(n, 2)`)
   - O valor absoluto (arredondado para inteiro com `teto`)

**Exemplo de saída:**
```
Número: 9.0
Raiz quadrada: 3.0
Ao quadrado: 81.0
Valor absoluto (teto): 9
```

> **Dica:** inclua a biblioteca com `inclua biblioteca Matematica --> mat`.

---

## 2. Formatador de Nome

Use a biblioteca `Texto` para:

1. Ler o nome completo do usuário (com possíveis espaços extras nas bordas).
2. Remover espaços extras com `apararEspacos`.
3. Exibir o nome em maiúsculas.
4. Exibir o número de caracteres (sem contar os espaços extras).

**Exemplo de saída:**
```
Nome digitado: "  ana paula  "
Nome formatado: ANA PAULA
Número de caracteres: 9
```

---

## 3. Conversor de Tipos

Use a biblioteca `Tipos` para construir um mini-conversor:

1. Leia um número real do usuário.
2. Converta para inteiro (use `tip.inteiro`) e exiba.
3. Converta o inteiro de volta para cadeia e exiba a mensagem:
   `"O número " + cadeia + " foi digitado."`

**Exemplo de saída:**
```
Digite um real: 7.8
Como inteiro: 7
Mensagem: O número 7 foi digitado.
```

> **Dica:** use `txt.concatenar` junto com `tip.cadeia` para montar a mensagem.

---

## 4. Dado Virtual

Use a biblioteca `Util` para simular um dado de 6 faces:

1. Simule 5 lançamentos com `util.sorteia(1, 6)`.
2. Some todos os resultados.
3. Exiba cada resultado e a soma total.

**Exemplo de saída:**
```
Lançamento 1: 3
Lançamento 2: 6
Lançamento 3: 1
Lançamento 4: 4
Lançamento 5: 2
Total: 16
```

---

## 5. Detector de Palíndromo

Use a biblioteca `Texto` para verificar se uma palavra é palíndromo (igual lida de trás para frente):

1. Leia uma palavra do usuário.
2. Use `txt.minusculo` para normalizar.
3. Use `txt.subCadeia` e `txt.tamanho` para extrair os caracteres e verificar se a palavra invertida é igual à original.
4. Exiba "É palíndromo!" ou "Não é palíndromo.".

**Exemplos:**
```
Palavra: arara → É palíndromo!
Palavra: casa  → Não é palíndromo.
```

> **Dica:** percorra os índices de `0` até `tamanho-1` e monte uma cadeia invertida usando concatenar.

---

## 6. Contador de Vogais

Use a biblioteca `Texto` para contar quantas vogais existem em uma frase:

1. Leia uma frase.
2. Converta para minúsculas.
3. Percorra cada posição com `subCadeia(frase, i, i)` e verifique se é vogal.
4. Exiba o total de vogais.

**Exemplo de saída:**
```
Frase: "Lógica de programação"
Vogais encontradas: 9
```

---

## 7. Tabela de Potências

Use a biblioteca `Matematica` para gerar uma tabela de potências:

1. Leia a base e o expoente máximo.
2. Use um laço `para` de 1 até o expoente máximo.
3. Exiba cada linha: `base^exp = resultado`.

**Exemplo (base=2, exp_max=8):**
```
2^1 = 2.0
2^2 = 4.0
2^3 = 8.0
2^4 = 16.0
2^5 = 32.0
2^6 = 64.0
2^7 = 128.0
2^8 = 256.0
```

---

### Desafio Extra

Crie um **jogo de adivinhação** usando `Util.sorteia`:

1. O programa sorteia um número de 1 a 100.
2. O usuário tenta adivinhar com laço `enquanto`.
3. O programa diz "Maior!" ou "Menor!" a cada tentativa.
4. Ao acertar, exibe o número de tentativas.
5. Bônus: use `Matematica` para exibir quantas tentativas seriam necessárias no pior caso de uma busca binária (`mat.teto(mat.logaritmo(100.0, 2.0))`).

**Exemplo de saída:**
```
=== ADIVINHE O NÚMERO (1-100) ===
Chute: 50 → Maior!
Chute: 75 → Menor!
Chute: 62 → Maior!
Chute: 68 → Acertou em 4 tentativas!
(Busca binária: máx. 7 tentativas)
```
