# ⚽ Desafio 3 — Rodadas do Campeonato

> **Grupo 3** | Estruturas principais: `para` + `se/senão` + acumulador de pontos

---

## Briefing do Cliente

> *"Sou treinador de futebol. Preciso de um sistema que registre os gols de 5 rodadas do campeonato. Em cada rodada, digito os gols do meu time e do adversário. O programa calcula os pontos (vitória = 3, empate = 1, derrota = 0) e no final me diz se estamos campeões, na zona de playoff ou no rebaixamento."*

---

## Regras de pontuação

| Resultado da rodada | Pontos |
|---------------------|--------|
| Vitória (gols A > gols B) | +3 |
| Empate (gols A == gols B) | +1 |
| Derrota (gols A < gols B) | +0 |

## Classificação final (após 5 rodadas)

| Pontos acumulados | Situação |
|-------------------|----------|
| 12 ou mais | 🏆 Campeão! |
| 7 a 11 | 🎯 Zona de Playoff |
| Menos de 7 | ⬇ Rebaixamento |

---

## 👑 Tech Lead

### Responsabilidades
- Coordenar o time e garantir que todos entendam o desafio antes de começar.
- Dividir as tarefas conforme os papéis abaixo.
- Controlar o tempo de cada fase.
- Apresentar o projeto ao final para a turma (demo + explicação das decisões).

### Checklist de entrega
- [ ] Todos os papéis foram assumidos
- [ ] Dev concluiu o algoritmo
- [ ] QA executou os testes e registrou os resultados
- [ ] UX Writer entregou todos os textos antes do Dev codificar
- [ ] O grupo consegue explicar como o acumulador de pontos funciona dentro do `para`

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O placar de cada rodada aparece junto com o resultado (vitória/empate/derrota)?
- Os pontos de cada rodada são exibidos um a um ou só o total no final?
- O que acontece se o usuário digitar um número negativo de gols?
- 12 pontos são possíveis se ganhar tudo? *(Resposta: sim — 5 vitórias = 15 pts, mas 12 já garante título)*

### Checklist de validação (faça ao final)
- [ ] 5 rodadas são pedidas, uma a uma
- [ ] Vitória → mensagem de vitória e 3 pontos somados
- [ ] Empate → mensagem de empate e 1 ponto somado
- [ ] Derrota → mensagem de derrota e 0 pontos somados
- [ ] Pontuação final igual ao esperado calculado manualmente
- [ ] Classificação correta exibida ao final (campeão/playoff/rebaixamento)
- [ ] Os textos estão claros e sem erros de português

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** `para`, `se/senão` e um acumulador de pontos.
- Não usar vetores, matrizes ou funções.

### Fluxo esperado do programa
1. Declarar variáveis: `inteiro i, golsA, golsB, pontos`
2. Inicializar `pontos = 0`
3. Exibir saudação (texto do UX Writer)
4. `para i de 1 ate 5`:
   - Exibir "Rodada i de 5"
   - `leia(golsA)` — gols do time A
   - `leia(golsB)` — gols do time B
   - `se (golsA > golsB)`: pontos = pontos + 3, mensagem de vitória
   - `senao se (golsA == golsB)`: pontos = pontos + 1, mensagem de empate
   - `senao`: mensagem de derrota
5. Após o loop: exibir total de pontos
6. `se (pontos >= 12)`: campeão
   `senao se (pontos >= 7)`: playoff
   `senao`: rebaixamento

### Dicas técnicas
- O acumulador `pontos` deve ser iniciado com `0` **antes** do `para`.
- Use `i` no `escreva()` para mostrar o número da rodada: `escreva("Rodada ", i, " de 5")`.
- O `para` é ideal aqui porque sempre serão exatamente 5 rodadas.
- Não use `escolha` para comparar gols — `se/senão` é obrigatório neste desafio.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| #    | Gols por rodada (A x B)                     | Pontos esperados | Classificação esperada | Resultado |
|------|---------------------------------------------|------------------|------------------------|-----------|
| CT01 | 2x0, 1x0, 3x1, 2x2, 1x0 (4V, 1E)          | 13               | Campeão                |           |
| CT02 | 2x0, 1x0, 3x1, 2x0, 0x0 (4V, 1E)          | 13               | Campeão                |           |
| CT03 | 1x0, 1x0, 0x1, 0x0, 0x1 (3V, 2D)          | 9                | Playoff                |           |
| CT04 | 0x0, 0x0, 0x0, 1x1, 1x1 (5 empates)       | 5                | Rebaixamento           |           |
| CT05 | 0x1, 0x1, 0x1, 0x1, 0x1 (5 derrotas)      | 0                | Rebaixamento           |           |
| CT06 | 2x0, 2x0, 2x0, 2x0, 2x0 (5 vitórias)      | 15               | Campeão                |           |
| CT07 | Rodada com placar 0x0 (empate)             | +1               | Empate identificado corretamente |      |
| CT08 | Pontuação exatamente 7 (borda playoff)     | 7                | Playoff (não rebaixamento) |       |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Pontos calculados errados (vitória somando 1 ao invés de 3).
- Classificação errada para a faixa de pontos.
- Número de rodadas diferente de 5.
- Placar da rodada não exibido na saída.
- Acumulador zerado a cada rodada (não acumula corretamente).

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"campeonato"` | _"Sistema de Rodadas — Campeonato Gaúcho ⚽"_ |
| Cabeçalho de rodada | Início de cada rodada dentro do para | `"rod i"` | _"--- Rodada [i] de 5 ---"_ |
| Pedir gols A | Antes do leia(golsA) | `"golsA:"` | _"Gols do seu time: "_ |
| Pedir gols B | Antes do leia(golsB) | `"golsB:"` | _"Gols do adversário: "_ |
| Vitória | se golsA > golsB | `"vit"` | _"Vitória! +3 pontos 🏅"_ |
| Empate | senao se golsA == golsB | `"emp"` | _"Empate. +1 ponto."_ |
| Derrota | senao | `"derr"` | _"Derrota desta vez. 0 pontos."_ |
| Total de pontos | Antes da classificação | `"pts ="` | _"Pontuação total: [X] pontos em 5 rodadas."_ |
| Campeão | pontos >= 12 | `"camp"` | _"🏆 CAMPEÃO! Parabéns, vocês conquistaram o título!"_ |
| Playoff | pontos >= 7 | `"play"` | _"🎯 Zona de Playoff! Lutem pela vaga!"_ |
| Rebaixamento | pontos < 7 | `"reb"` | _"⬇ Rebaixamento. Preparem-se para a próxima temporada."_ |

### Regras de qualidade
- Mostre o número da rodada dinamicamente (não escreva "Rodada 1" fixo para cada caso).
- Use o mesmo nível de entusiasmo nas vitórias e encorajamento nas derrotas.
- Seja breve: cada mensagem de resultado de rodada deve caber em 1 linha.
- Máximo de 2 linhas nas mensagens de classificação final.

---

## Estruturas que devem ser usadas

- `para` ← OBRIGATÓRIO (iterar as 5 rodadas)
- `se / senao se / senao` ← OBRIGATÓRIO (calcular resultado de cada rodada e classificação final)
- Acumulador de pontos ← OBRIGATÓRIO (variável `pontos` incrementada a cada rodada)

## Estruturas proibidas

- Vetores e matrizes ← PENALIDADE -2 pontos
- Funções e procedimentos personalizados ← PENALIDADE -2 pontos
