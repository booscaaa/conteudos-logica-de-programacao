# 📐 Desafio 5 — Classificador de Triângulo

> **Grupo 5** | Estrutura principal: álgebra booleana + `se / senão` aninhado

---

## Briefing do Cliente

> *"Sou professor de geometria. Preciso de um programa que receba os 3 lados de um triângulo, verifique primeiro se eles formam um triângulo válido usando a condição matemática correta e, se sim, classifique se é Equilátero, Isósceles ou Escaleno. Os operadores lógicos `e` e `ou` são obrigatórios no código."*

---

## Regras Matemáticas

### Condição de existência do triângulo
Um triângulo é válido se **cada lado for menor que a soma dos outros dois**:

```
a < (b + c)   E   b < (a + c)   E   c < (a + b)
```

> Se qualquer uma das três condições falhar, **não é um triângulo válido**.

### Classificação
| Condição | Tipo |
|----------|------|
| `a == b` **e** `b == c` | Equilátero (todos iguais) |
| `a == b` **ou** `b == c` **ou** `a == c` (mas não todos iguais) | Isósceles (dois iguais) |
| `a != b` **e** `b != c` **e** `a != c` | Escaleno (todos diferentes) |

---

## 👑 Tech Lead

### Responsabilidades
- Este é o desafio mais matemático — certifique-se que o grupo entendeu a condição de existência **antes** de qualquer código.
- Coordenar para que a álgebra booleana apareça explicitamente no código (`e`, `ou`).
- Apresentar o projeto explicando a condição de existência e a lógica de classificação.

### Como dividir o problema (sugestão de planejamento)
1. **Parte 1 (verificar validade):** Uma condição com `e` triplo.
2. **Parte 2 (classificar — dentro do `se`):** Três `senao se` aninhados.

### Checklist de entrega
- [ ] Dev usou os operadores `e` e `ou` explicitamente no código
- [ ] A condição de existência cobre os 3 lados (não só dois)
- [ ] QA testou (1, 2, 10) para garantir que triângulo inválido é detectado
- [ ] QA testou (3,3,3), (3,3,5) e (3,4,5) para cada tipo
- [ ] UX Writer criou mensagem divertida/geométrica para cada tipo
- [ ] O grupo consegue explicar o que é a condição de existência

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a referência matemática do grupo — explique a condição de existência se necessário.
- Validar se os 4 cenários (inválido, equilátero, isósceles, escaleno) funcionam.

### Perguntas que você deve saber responder
- Os lados podem ser decimais? *(Sim — use `real`)*
- O que acontece com lados negativos ou zero? *(Não é requisito tratar — versão simples)*
- Um triângulo com lados (5, 5, 5) é equilátero? *(Sim)*
- Um triângulo com lados (5, 5, 3) é isósceles? *(Sim — dois lados iguais)*
- Por que (1, 2, 10) não forma triângulo? *(Porque 1 não é menor que 2+10? Errado — 1 < 12. O problema é 10 < 1+2 = 3, que é falso!)*

### Checklist de validação (faça ao final)
- [ ] Lados (3, 3, 3) → Equilátero ✅
- [ ] Lados (3, 3, 5) → Isósceles ✅
- [ ] Lados (5, 5, 3) → Isósceles ✅ (ordem diferente dos lados iguais)
- [ ] Lados (3, 4, 5) → Escaleno ✅
- [ ] Lados (1, 2, 10) → Não forma triângulo ✅ (10 >= 1+2)
- [ ] Lados (0, 5, 5) → Não forma triângulo ✅ (se tratar lado zero)
- [ ] Textos exibidos são claros e sem erros

---

## 💻 Dev

### Responsabilidades
- Usar álgebra booleana (`e`, `ou`) de forma explícita e correta.
- Estruturar o código em duas etapas: validação e classificação.

### Estrutura esperada do programa

```portugol
programa {
  funcao inicio() {
    // 1. Variáveis
    real a, b, c

    // 2. Entrada (textos do UX Writer)
    escreva("...")
    leia(a)
    escreva("...")
    leia(b)
    escreva("...")
    leia(c)

    // 3. Verificar se é triângulo válido
    //    Condição: cada lado menor que a soma dos outros dois
    se (a < (b + c) e b < (a + c) e c < (a + b)) {

      // 4. É válido — classificar
      se (a == b e b == c) {
        escreva("...")  // Equilátero
      } senao se (a == b ou b == c ou a == c) {
        escreva("...")  // Isósceles
      } senao {
        escreva("...")  // Escaleno
      }

    } senao {
      escreva("...")  // Não forma triângulo
    }
  }
}
```

### Dicas técnicas
- Use `real` para os três lados — o professor pode testar com 3.5, 4.5, 5.0.
- A condição de existência **precisa dos 3 termos** ligados por `e`:
  - `a < (b + c) e b < (a + c) e c < (a + b)`
  - Omitir um dos termos causa bugs para casos específicos.
- Para Isósceles, a condição `a == b ou b == c ou a == c` cobre todas as posições dos lados iguais.
- A ordem das classificações importa: teste Equilátero **primeiro**, pois um equilátero também satisfaz a condição de Isósceles.
- Com `real`, a comparação `==` pode ter imprecisão em valores decimais. Para esta dinâmica, use valores inteiros nos testes.

### Por que Equilátero precisa vir antes de Isósceles?

```
Lados (3, 3, 3):
  - a == b ou b == c ou a == c   → VERDADEIRO (seria classificado como Isósceles!)
  - a == b e b == c              → VERDADEIRO (é Equilátero!)

Se testar Equilátero primeiro, classificamos corretamente.
```

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar casos cobrindo os 4 resultados possíveis + casos de borda para a condição de existência.
- Calcular manualmente se o triângulo é válido antes de testar.

### Casos de teste obrigatórios

| # | Lado A | Lado B | Lado C | Válido? | Tipo esperado | Resultado |
|---|--------|--------|--------|---------|---------------|-----------|
| CT01 | 3 | 3 | 3 | Sim | Equilátero | |
| CT02 | 5 | 5 | 5 | Sim | Equilátero | |
| CT03 | 3 | 3 | 5 | Sim | Isósceles (a==b) | |
| CT04 | 3 | 5 | 5 | Sim | Isósceles (b==c) | |
| CT05 | 5 | 3 | 5 | Sim | Isósceles (a==c) | |
| CT06 | 3 | 4 | 5 | Sim | Escaleno | |
| CT07 | 7 | 10 | 5 | Sim | Escaleno | |
| CT08 | 1 | 2 | 10 | Não | Mensagem de inválido | |
| CT09 | 5 | 1 | 1 | Não | Mensagem de inválido | |
| CT10 | 3 | 4 | 7 | Não | Inválido (7 não < 3+4=7, falha `c < a+b`) | |

> **CT10** é um caso especial: `c < a + b` → `7 < 7` → **falso**! Use isso para testar o `<` (estrito).

### Como verificar manualmente a condição de existência

Para (3, 4, 7):
- a < b+c → 3 < 11 ✅
- b < a+c → 4 < 10 ✅
- c < a+b → 7 < 7 ❌ → **não forma triângulo!**

### Onde os bugs costumam aparecer
- Equilátero classificado como Isósceles (ordem errada dos `se/senão`).
- Condição de existência com apenas 2 termos (falta um dos lados).
- Usar `<=` em vez de `<` na condição de existência (CT10 passaria errado).

---

## 🎨 UX Writer

### Responsabilidades
- Criar textos de entrada e **4 mensagens de resultado** (inválido, equilátero, isósceles, escaleno).
- Os textos de resultado podem ser criativos — use contexto geométrico!

### Textos que você precisa criar

| Momento | Exemplo ruim | Seu texto |
|---------|-------------|-----------|
| Abertura | `"triangulo"` | _"=== Classificador de Triângulos 📐 ==="_ |
| Pedir lado A | `"a"` | _"Digite o valor do lado A: "_ |
| Pedir lado B | `"b"` | _"Digite o valor do lado B: "_ |
| Pedir lado C | `"c"` | _"Digite o valor do lado C: "_ |
| Inválido | `"nao"` | _"Esses valores não formam um triângulo válido. Verifique os lados!"_ |
| Equilátero | `"eq"` | _"Triângulo EQUILÁTERO! Todos os lados iguais — perfeita simetria!"_ |
| Isósceles | `"is"` | _"Triângulo ISÓSCELES! Dois lados iguais — quase perfeito!"_ |
| Escaleno | `"sc"` | _"Triângulo ESCALENO! Todos os lados diferentes — único e especial!"_ |

### Regras de qualidade
- Escreva o tipo do triângulo em **caixa alta** para dar destaque — mais fácil de ler na tela do terminal.
- A mensagem de inválido deve ser explicativa, não só "erro".
- Pode ser didático: a mensagem pode lembrar ao usuário o que o tipo significa.

---

## Estruturas que devem ser usadas

```
se / senao se / senao   ← OBRIGATÓRIO (validação e classificação)
e / ou                  ← OBRIGATÓRIO (álgebra booleana — condição de existência e isósceles)
```

## Estruturas proibidas

```
escolha / caso          ← Não se aplica a este problema
enquanto / para / repita  ← PENALIDADE -2 pontos
```

---

## Curiosidade para apresentar na demo

> O triângulo de lados (3, 4, 5) é famoso na matemática — é o **triângulo retângulo mais simples**!
> Basta conferir: 3² + 4² = 9 + 16 = 25 = 5² ✅ (Teorema de Pitágoras)
> Use ele no CT06 e comente na apresentação — impressiona!
