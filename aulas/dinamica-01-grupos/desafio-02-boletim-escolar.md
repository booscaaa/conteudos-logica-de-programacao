# 📋 Desafio 2 — Boletim Escolar

> **Grupo 2** | Estrutura principal: `se / senão` + `escolha / caso`

---

## Briefing do Cliente

> *"Sou coordenador da escola. Quero um programa que receba o nome do aluno e sua média final (0 a 10), exiba a situação (aprovado, em recuperação ou reprovado) e o conceito de A até D. O aluno precisa ser saudado pelo nome."*

---

## Regras de Negócio

| Média           | Situação      | Conceito |
|-----------------|---------------|----------|
| ≥ 9.0           | Aprovado      | A        |
| ≥ 7.0 e < 9.0  | Aprovado      | B        |
| ≥ 5.0 e < 7.0  | Aprovado      | C        |
| ≥ 3.0 e < 5.0  | Recuperação   | D        |
| < 3.0           | Reprovado     | —        |

---

## 👑 Tech Lead

### Responsabilidades
- Coordenar o time e garantir que todos entendam as regras de negócio antes de começar.
- Perceber que o desafio tem **duas estruturas juntas**: `se/senão` para situação e `escolha` para conceito — comunicar isso ao Dev.
- Controlar o tempo de cada fase.
- Apresentar o projeto ao final: demo + explicação de por que usaram duas estruturas diferentes.

### Checklist de entrega
- [ ] Dev entendeu que precisa usar `se/senão` para faixas de nota (comparação)
- [ ] Dev entendeu que pode converter nota para conceito com `escolha/caso`
- [ ] UX Writer definiu os textos de aprovado, recuperação e reprovado
- [ ] QA testou todos os valores críticos da tabela
- [ ] O grupo sabe explicar a diferença entre `se/senão` e `escolha/caso`

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a referência das regras — o time pergunta para **você**.
- Validar se o resultado final atende ao que foi pedido.

### Perguntas que você deve saber responder
- A média pode ter casas decimais? *(Sim — use `real`)*
- O que acontece com média 7.0 exato? *(Entra na faixa B — Aprovado)*
- O que acontece com média negativa ou acima de 10? *(O cliente não pediu tratamento — não é requisito desta versão)*
- O conceito aparece para reprovado? *(Não — apenas a situação "Reprovado")*

### Checklist de validação (faça ao final)
- [ ] Digitei nome "Ana" e média 9.5 → apareceu "Aprovado — Conceito A"
- [ ] Digitei nome "Bruno" e média 7.0 → apareceu "Aprovado — Conceito B"
- [ ] Digitei nome "Carol" e média 5.0 → apareceu "Aprovado — Conceito C"
- [ ] Digitei nome "Diego" e média 3.0 → apareceu "Recuperação — Conceito D"
- [ ] Digitei nome "Eva" e média 1.0 → apareceu "Reprovado"
- [ ] O nome do aluno aparece na saudação e no resultado

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo combinando `se/senão` e `escolha/caso`.
- O `se/senão` é obrigatório para faixas de valores (média é `real`, não pode usar `escolha` diretamente).

### Estratégia de implementação

**Passo 1:** Use `se/senão` para determinar situação e conceito (como uma variável `caracter`).

```portugol
programa {
  funcao inicio() {
    // 1. Variáveis
    cadeia nome
    real media
    caracter conceito

    // 2. Entrada
    escreva("...")  // texto do UX Writer
    leia(nome)
    escreva("...")
    leia(media)

    // 3. Determinar situação e conceito com se/senão
    se (media >= 9.0) {
      conceito = 'A'
      escreva("Aprovado — Conceito A")
    } senao se (media >= 7.0) {
      conceito = 'B'
      escreva("Aprovado — Conceito B")
    } senao se (media >= 5.0) {
      conceito = 'C'
      escreva("Aprovado — Conceito C")
    } senao se (media >= 3.0) {
      conceito = 'D'
      escreva("Recuperação — Conceito D")
    } senao {
      escreva("Reprovado")
    }
  }
}
```

**Passo 2 (opcional — para ganhar ponto extra de estrutura):** Após determinar o `conceito` com `se/senão`, use `escolha(conceito)` para exibir uma mensagem personalizada por conceito.

```portugol
    escolha(conceito) {
      caso 'A':
        escreva("Excelente desempenho! Continue assim.")
      caso 'B':
        escreva("Bom trabalho! Você está aprovado.")
      caso 'C':
        escreva("Passou, mas pode melhorar mais!")
      caso 'D':
        escreva("Atenção: você vai para recuperação.")
    }
```

### Dicas técnicas
- `media` deve ser `real` — aceita 7.5, 9.0 etc.
- `nome` deve ser `cadeia` para aceitar nome completo.
- A ordem dos `senao se` importa: teste do maior para o menor.
- `conceito` pode ser `caracter` (valor entre aspas simples: `'A'`).

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar casos de teste cobrindo cada faixa da tabela **e os limites exatos**.
- Os limites exatos são os mais importantes — são onde os bugs aparecem.

### Casos de teste obrigatórios

| # | Nome | Média | Situação esperada | Conceito esperado | Resultado |
|---|------|-------|-------------------|-------------------|-----------|
| CT01 | Ana | 9.5 | Aprovado | A | |
| CT02 | Bruno | 9.0 | Aprovado | A (limite superior do A) | |
| CT03 | Carol | 8.9 | Aprovado | B (logo abaixo do A) | |
| CT04 | Diego | 7.0 | Aprovado | B (limite do B) | |
| CT05 | Eva | 5.5 | Aprovado | C | |
| CT06 | Felipe | 5.0 | Aprovado | C (limite do C) | |
| CT07 | Gabi | 4.9 | Recuperação | D (logo abaixo do C) | |
| CT08 | Hugo | 3.0 | Recuperação | D (limite do D) | |
| CT09 | Iris | 1.0 | Reprovado | — | |
| CT10 | João | 0.0 | Reprovado | — | |

> Preencha **Resultado** com ✅ OK ou ❌ FALHA — descreva o problema encontrado.

### Onde os bugs costumam aparecer
- Média **exatamente no limite** (7.0, 5.0, 3.0): o `>=` foi usado corretamente?
- Nome do aluno sumiu da saída.
- Conceito exibido para reprovado (não deveria aparecer).

---

## 🎨 UX Writer

### Responsabilidades
- Definir todos os textos de entrada e saída.
- Usar o nome do aluno nas mensagens de resultado.

### Textos que você precisa criar

| Momento | Exemplo ruim | Seu texto |
|---------|-------------|-----------|
| Abertura | `"inicio"` | _"=== Sistema de Boletim Escolar ==="_ |
| Pedir nome | `"nome:"` | _"Informe o nome do aluno: "_ |
| Pedir média | `"media:"` | _"Digite a média final (0.0 a 10.0): "_ |
| Resultado — Aprovado A | `"A"` | _"Parabéns, [nome]! Aprovado com Conceito A — Excelente!"_ |
| Resultado — Aprovado B | `"B"` | _"[nome], aprovado com Conceito B. Bom trabalho!"_ |
| Resultado — Aprovado C | `"C"` | _"[nome], aprovado com Conceito C. Continue melhorando!"_ |
| Resultado — Recuperação | `"D"` | _"Atenção, [nome]. Conceito D — você vai para recuperação."_ |
| Resultado — Reprovado | `"rep"` | _"[nome], infelizmente você foi reprovado. Não desista!"_ |

> **Nota:** O Portugol não interpola variáveis automaticamente. Escreva os textos separados das variáveis usando vírgula: `escreva("Parabéns, ", nome, "! Aprovado com Conceito A.")`

### Regras de qualidade
- O nome do aluno **deve aparecer** em todas as mensagens de resultado.
- Mensagens de recuperação e reprovação devem ser motivadoras, não agressivas.
- Evite usar a letra do conceito sozinha — contextualize: "Aprovado com Conceito B".

---

## Estruturas que devem ser usadas

```
se / senao se / senao   ← OBRIGATÓRIO (para comparar faixas de média)
escolha / caso          ← OBRIGATÓRIO (para mensagem por conceito)
```

## Estruturas proibidas

```
enquanto / para / repita   ← PENALIDADE -2 pontos
```
