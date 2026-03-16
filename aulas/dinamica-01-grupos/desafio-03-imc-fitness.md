# 💪 Desafio 3 — IMC Fitness

> **Grupo 3** | Estrutura principal: `se / senão` aninhado + cálculo matemático

---

## Briefing do Cliente

> *"Sou personal trainer. Preciso de um app que receba o nome do cliente, o peso em quilos e a altura em metros, calcule o IMC usando a fórmula peso dividido por altura ao quadrado, exiba a classificação e uma mensagem motivacional diferente para cada faixa. O cliente deve ser saudado pelo nome."*

---

## Fórmula e Classificação

**Fórmula:** `IMC = peso / (altura * altura)`

| Faixa de IMC       | Classificação     |
|--------------------|-------------------|
| IMC < 18.5         | Abaixo do peso    |
| 18.5 ≤ IMC < 25.0 | Peso normal       |
| 25.0 ≤ IMC < 30.0 | Sobrepeso         |
| IMC ≥ 30.0         | Obesidade         |

---

## 👑 Tech Lead

### Responsabilidades
- Garantir que o Dev entenda a fórmula antes de codificar.
- Este desafio **não usa `escolha/caso`** — toda a lógica é `se/senão` aninhado.
- Coordenar para que UX Writer entregue **4 mensagens motivacionais** (uma por faixa).
- Apresentar a solução explicando a fórmula e as decisões de estrutura.

### Checklist de entrega
- [ ] Dev calculou corretamente: `imc = peso / (altura * altura)` — não `peso / altura / altura`
- [ ] Dev usou `real` para peso, altura e imc
- [ ] UX Writer criou mensagem motivacional para cada uma das 4 faixas
- [ ] QA testou valores em cada faixa e nos limites
- [ ] O grupo consegue mostrar o cálculo do IMC rodando na tela

---

## 🧑‍💼 Cliente

### Responsabilidades
- Esclarecer dúvidas sobre os requisitos.
- Validar se o programa faz exatamente o que o briefing pede.

### Perguntas que você deve saber responder
- A altura é em metros ou centímetros? *(Metros — ex: 1.75)*
- O IMC precisa aparecer na tela? *(Sim — com pelo menos 2 casas decimais)*
- O que acontece com valores absurdos como peso 0 ou altura 0? *(Não é requisito tratar — esta versão não precisa validar)*
- A mensagem motivacional precisa ser diferente para cada faixa? *(Sim — é requisito do briefing)*

### Checklist de validação (faça ao final)

Calcule manualmente para conferir:

| Nome | Peso | Altura | IMC esperado | Classificação | OK? |
|------|------|--------|-------------|---------------|-----|
| Ana | 50 | 1.70 | 17.30 | Abaixo do peso | |
| Bruno | 70 | 1.75 | 22.86 | Peso normal | |
| Carol | 80 | 1.70 | 27.68 | Sobrepeso | |
| Diego | 100 | 1.75 | 32.65 | Obesidade | |

- [ ] Nome aparece na saudação inicial
- [ ] IMC calculado e exibido com 2 casas decimais
- [ ] Classificação correta para cada caso
- [ ] Mensagem motivacional é diferente em cada faixa

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo usando `se / senao se / senao` aninhado.
- Calcular o IMC corretamente com a fórmula fornecida.

### Fluxo esperado do programa
1. Declarar variáveis: `cadeia nome`, `real peso`, `real altura`, `real imc`
2. Exibir saudação e solicitar nome, peso e altura
3. Calcular: `imc = peso / (altura * altura)`
4. Exibir o IMC calculado
5. Usar `se / senao se / senao` para classificar:
   - Se IMC < 18.5 → Abaixo do peso (+ mensagem do UX Writer)
   - Senão se IMC < 25.0 → Peso normal
   - Senão se IMC < 30.0 → Sobrepeso
   - Senão → Obesidade

### Dicas técnicas
- Use `real` para **peso, altura e imc** — todos têm casas decimais.
- A fórmula é `peso / (altura * altura)` — os parênteses são obrigatórios! Sem eles o resultado é errado.
- A ordem dos `senao se` importa: teste do menor IMC para o maior.
- Não é necessário usar `escolha/caso` neste desafio — `se/senão` cobre tudo.

### Exemplo de cálculo manual para verificar
- Peso 70 kg, Altura 1.75 m → IMC = 70 / (1.75 × 1.75) = 70 / 3.0625 ≈ **22.86** → Peso normal ✅

---

## 🔍 QA (Tester)

### Responsabilidades
- Calcular manualmente os IMCs esperados para cada caso de teste.
- Verificar se a classificação exibida corresponde à faixa correta.
- Testar os **valores de fronteira** (18.5, 25.0, 30.0) — são onde os bugs aparecem.

### Casos de teste obrigatórios

| # | Nome | Peso (kg) | Altura (m) | IMC esperado | Classificação esperada | Resultado |
|---|------|-----------|------------|-------------|----------------------|-----------|
| CT01 | Ana | 50.0 | 1.70 | 17.30 | Abaixo do peso | |
| CT02 | Bruno | 53.4 | 1.70 | 18.48 | Peso normal (acima de 18.5) | |
| CT03 | Carol | 70.0 | 1.75 | 22.86 | Peso normal | |
| CT04 | Diego | 72.3 | 1.70 | 25.02 | Sobrepeso (acima de 25.0) | |
| CT05 | Eva | 80.0 | 1.70 | 27.68 | Sobrepeso | |
| CT06 | Felipe | 86.5 | 1.70 | 29.95 | Sobrepeso (abaixo de 30.0) | |
| CT07 | Gabi | 87.0 | 1.70 | 30.10 | Obesidade (acima de 30.0) | |
| CT08 | Hugo | 120.0 | 1.75 | 39.18 | Obesidade | |

> **Como calcular:** IMC = peso ÷ (altura × altura). Faça no celular antes de testar.

### Onde os bugs costumam aparecer
- IMC calculado errado (fórmula sem parênteses).
- Limite 18.5: IMC = 18.5 cai em "Abaixo do peso" em vez de "Peso normal"?
- Limite 25.0 e 30.0: mesma questão dos operadores `<` vs `<=`.
- Nome do cliente sumiu da saída.

---

## 🎨 UX Writer

### Responsabilidades
- Criar textos de entrada, saudação e **4 mensagens motivacionais** (uma por faixa de IMC).
- As mensagens motivacionais são o diferencial deste projeto — devem ser genuínas.

### Textos que você precisa criar

| Momento | Exemplo ruim | Seu texto |
|---------|-------------|-----------|
| Abertura | `"app"` | _"=== Calculadora IMC — FitCESURG 💪 ==="_ |
| Pedir nome | `"nome"` | _"Olá! Qual é o seu nome? "_ |
| Pedir peso | `"peso"` | _"Digite seu peso em quilos (ex: 70.5): "_ |
| Pedir altura | `"alt"` | _"Digite sua altura em metros (ex: 1.75): "_ |
| Mostrar IMC | `"imc ="` | _"Seu IMC calculado é: [valor]"_ |
| Classificação — Abaixo do peso | `"magro"` | _"Classificação: Abaixo do peso."_ |
| Motivacional — Abaixo do peso | sem mensagem | _"Que tal incrementar um pouco na alimentação? Você consegue!"_ |
| Classificação — Peso normal | `"normal"` | _"Classificação: Peso normal. Parabéns!"_ |
| Motivacional — Peso normal | sem mensagem | _"Continue assim, [nome]! Seu corpo agradece."_ |
| Classificação — Sobrepeso | `"gordo"` | _"Classificação: Sobrepeso."_ |
| Motivacional — Sobrepeso | sem mensagem | _"Um passo de cada vez, [nome]. Você tem tudo para melhorar!"_ |
| Classificação — Obesidade | `"obeso"` | _"Classificação: Obesidade. Procure um especialista."_ |
| Motivacional — Obesidade | sem mensagem | _"Nunca é tarde para cuidar da saúde. Comece hoje, [nome]!"_ |

### Regras de qualidade
- **Nunca use termos pejorativos** (gordo, magro, obeso como adjetivo da pessoa).
- Use o nome do cliente nas mensagens motivacionais — fica mais pessoal.
- Mantenha o tom encorajador em todas as faixas — não há faixa "ruim".

---

## Estrutura que deve ser usada

- `se / senao se / senao` ← OBRIGATÓRIO (para comparar faixas de IMC)

## Estruturas proibidas

- `escolha / caso` ← não funciona com `real` nas faixas
- `enquanto / para / repita` ← PENALIDADE -2 pontos
