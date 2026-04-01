# 🎯 Desafio 2 — Quiz de Conhecimentos

> **Grupo 2** | Estruturas principais: `para` + `escolha/caso` + `se/senão`

---

## Briefing do Cliente

> *"Quero um quiz rápido de informática com 3 perguntas de múltipla escolha. O sistema apresenta cada pergunta, o aluno digita a letra da resposta (A, B ou C) e ao final mostra a pontuação e um resultado: ouro, prata, bronze ou 'tente novamente'."*

---

## Perguntas do Quiz

| # | Pergunta | A | B | C | Resposta correta |
|---|----------|---|---|---|------------------|
| 1 | Qual operação calcula o **resto** da divisão? | `/` | `%` | `*` | **B** |
| 2 | O que significa a sigla **CPU**? | Central Processing Unit | Computer Power Unit | Core Processing Utility | **A** |
| 3 | Qual operador lógico **E** no Portugol? | `&&` | `and` | `e` | **C** |

## Resultado por pontuação

| Pontos | Resultado    |
|--------|--------------|
| 3      | 🥇 Ouro      |
| 2      | 🥈 Prata     |
| 1      | 🥉 Bronze    |
| 0      | 🔄 Tente novamente |

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
- [ ] O grupo consegue explicar POR QUE usou `para` e não `enquanto` aqui

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O que acontece se o aluno digitar uma letra diferente de A, B ou C?
- O sistema mostra se a resposta estava certa ou errada em cada pergunta?
- O resultado final (ouro/prata/bronze) aparece com mensagem especial?
- As letras maiúsculas e minúsculas são aceitas da mesma forma?

### Checklist de validação (faça ao final)
- [ ] 3 perguntas aparecem em sequência, uma por vez
- [ ] Resposta certa → ponto somado e mensagem de acerto
- [ ] Resposta errada → sem ponto e mensagem de erro
- [ ] 3 acertos → resultado Ouro com mensagem especial
- [ ] 0 acertos → resultado "Tente novamente"
- [ ] Os textos estão claros e sem erros de português

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** `para`, `escolha/caso` e `se/senão`.
- Não usar vetores, matrizes ou funções.

### Fluxo esperado do programa
1. Declarar variáveis: `inteiro i, pontos`, `caracter resposta`
2. Inicializar `pontos = 0`
3. Exibir saudação (texto do UX Writer)
4. `para i de 1 ate 3`:
   - `escolha(i)` para exibir cada pergunta com suas alternativas
   - `leia(resposta)` para capturar a resposta
   - Dentro de cada `caso`, usar `se (resposta == ...)` para verificar acerto
   - Se acertou: `pontos = pontos + 1` e mensagem de acerto
   - Se errou: mensagem de erro com a resposta correta
5. Após o loop: `escolha(pontos)` para exibir o resultado final

### Dicas técnicas
- `caracter` armazena uma única letra: `caracter resposta`.
- Comparação de caracter usa aspas simples: `se (resposta == 'B')`.
- Se quiser aceitar maiúscula e minúscula, use `ou`: `se (resposta == 'B' ou resposta == 'b')`.
- O `para` itera de 1 até 3 — perfeito quando o número de repetições é fixo.
- O `escolha(pontos)` no final funciona porque `pontos` é `inteiro`.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| #    | Respostas dadas (Q1, Q2, Q3) | Pontos esperados | Resultado esperado   | Resultado |
|------|------------------------------|------------------|----------------------|-----------|
| CT01 | B, A, C                      | 3                | Ouro                 |           |
| CT02 | B, A, A (Q3 errada)          | 2                | Prata                |           |
| CT03 | B, B, C (Q2 errada)          | 2                | Prata                |           |
| CT04 | A, A, C (Q1 errada)          | 2                | Prata                |           |
| CT05 | B, B, A (Q2 e Q3 erradas)    | 1                | Bronze               |           |
| CT06 | A, B, A (todas erradas)      | 0                | Tente novamente      |           |
| CT07 | b, a, c (minúsculas)         | 3 (se aceitar)   | Ouro ou aviso claro  |           |
| CT08 | Letra inválida (ex: Z) em Q1 | — | Mensagem de entrada inválida ou trata como errada |           |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Pergunta exibida errada para o número `i`.
- Resposta certa não soma ponto.
- Resposta errada soma ponto.
- Resultado final não corresponde à pontuação.
- O programa pula alguma pergunta ou trava.

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"quiz"` | _"Bem-vindo ao Quiz de Informática! Responda A, B ou C."_ |
| Enunciado Q1 | caso 1 do para | `"P1:"` | _"Pergunta 1: Qual operação calcula o resto da divisão?"_ |
| Enunciado Q2 | caso 2 do para | `"P2:"` | _"Pergunta 2: O que significa a sigla CPU?"_ |
| Enunciado Q3 | caso 3 do para | `"P3:"` | _"Pergunta 3: Qual operador lógico E no Portugol?"_ |
| Acerto | Quando resposta certa | `"ok"` | _"Resposta certa! +1 ponto 🎉"_ |
| Erro | Quando resposta errada | `"wrong"` | _"Resposta errada. A correta era [X]."_ |
| Resultado Ouro | pontos == 3 | `"ouro"` | _"🥇 OURO! Você acertou tudo! Excelente!"_ |
| Resultado Prata | pontos == 2 | `"prata"` | _"🥈 PRATA! Quase lá — 2 de 3 pontos!"_ |
| Resultado Bronze | pontos == 1 | `"bronze"` | _"🥉 BRONZE! Continue praticando!"_ |
| Tente novamente | pontos == 0 | `"0 pts"` | _"🔄 Nenhum acerto dessa vez. Não desista!"_ |

### Regras de qualidade
- As alternativas devem ficar em linhas separadas com `escreval()`.
- O texto da instrução de resposta deve estar logo antes do `leia()`.
- Use o mesmo tom encorajador independentemente do resultado.
- Máximo de 2 linhas por mensagem — não exagere.

---

## Estruturas que devem ser usadas

- `para` ← OBRIGATÓRIO (iterar pelas 3 perguntas)
- `escolha / caso / outrocaso` ← OBRIGATÓRIO (exibir perguntas e resultado final)
- `se / senão` ← OBRIGATÓRIO (verificar acerto de cada resposta)

## Estruturas proibidas

- Vetores e matrizes ← PENALIDADE -2 pontos
- Funções e procedimentos personalizados ← PENALIDADE -2 pontos
