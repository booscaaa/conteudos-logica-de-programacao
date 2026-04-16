# Desafio em Duplas — Banco CESURG

> **Formato:** Maratona Presencial · Duplas · 1h45min (20h30 às 22h15)
> **Pontuação máxima:** 100 pontos + bônus de tempo
> **Linguagem:** Portugol Studio

---

## Tema: Sistema Bancário

Vocês vão construir o **Banco CESURG** — um sistema de gerenciamento bancário completo rodando no console do Portugol Studio.

O sistema deve exibir um **menu principal** que fica em loop até o usuário digitar 0 para sair, com as opções: abrir conta, depositar, sacar, ver saldo, extrato geral, ranking top 5 e sair.

---

## Funcionalidades Detalhadas

### [1] Abrir Conta
- Pede o **nome do titular**
- Pede um **depósito inicial** — mínimo de R$ 50,00
  - Se o valor for menor, exibe erro e pede novamente
- O sistema suporta **no máximo 10 contas** simultaneamente
- Ao criar a conta, exibe o **número gerado automaticamente** (1, 2, 3…)

### [2] Depositar
- Pede o número da conta e valida se ela existe
- Pede o valor a depositar — deve ser positivo
- Atualiza o saldo e registra no extrato

### [3] Sacar
- Pede o número da conta e valida se ela existe
- Exibe o saldo disponível antes de pedir o valor
- Valida: o valor deve ser positivo **e** menor ou igual ao saldo disponível
- Atualiza o saldo e registra no extrato

### [4] Ver Saldo
- Pede o número da conta e valida se ela existe
- Exibe: número da conta, nome do titular e saldo atual

### [5] Extrato Geral
- Exibe todas as transações registradas no sistema
- Para cada transação: tipo (ABERTURA / DEPOSITO / SAQUE), titular, valor e saldo após a operação

### [6] Ranking Top 5
- Lista os 5 clientes com maior saldo, em ordem decrescente
- Se houver menos de 5 contas, exibe apenas as que existem
- Usa ordenação por seleção com vetores

### [0] Sair
- Exibe mensagem de despedida e encerra o programa

---

## Restrições Técnicas

| Restrição | Valor |
|-----------|-------|
| Máximo de contas | 10 |
| Máximo de transações no extrato | 20 |
| Linguagem | Portugol Studio |
| Funções personalizadas | Não usar |
| Variáveis globais | Não usar |

---

## Critérios de Avaliação

| Critério | Pontos |
|----------|--------|
| Menu funcional com enquanto + escolha/caso | 10 pts |
| Abrir conta com validação do depósito mínimo | 15 pts |
| Depositar com validação de valor positivo | 10 pts |
| Sacar com validação de saldo suficiente | 15 pts |
| Ver saldo | 5 pts |
| Extrato com vetor e laço para | 15 pts |
| Ranking Top 5 com ordenação | 20 pts |
| Qualidade do código (indentação, nomes de variáveis) | 10 pts |
| **Total** | **100 pts** |

> **Bônus de tempo:** até +10 pts automáticos — quanto antes os pontos forem registrados pelo professor, maior o bônus. Equipes que avançam cedo e consistentemente saem na frente em caso de empate.

---

## Conceitos Utilizados (Checklist)

- [ ] **Variáveis e tipos** — inteiro, real, cadeia (aula 02)
- [ ] **Condicionais** — se, senao, senao se (aula 03)
- [ ] **Álgebra booleana** — operadores e, ou nas validações (aula 04)
- [ ] **Switch/case** — escolha/caso para o menu (aula 05)
- [ ] **Laço para** — percorrer e ordenar vetores (aula 06)
- [ ] **Laço enquanto** — menu principal e validações (aula 07)
- [ ] **Vetores** — contas, saldos, extrato, ranking (aula 08)

---

## Ordem Sugerida de Implementação

1. **Menu esqueleto** — estrutura com enquanto e escolha/caso com opções vazias (10 min)
2. **Abrir conta** — sem validação primeiro, depois adiciona o loop de validação (25 min)
3. **Ver saldo** — mais simples, serve para testar se os vetores estão funcionando (10 min)
4. **Depositar** (15 min)
5. **Sacar** com validação de saldo (20 min)
6. **Extrato** (15 min)
7. **Ranking** com ordenação por seleção (35 min)
8. **Polimento** — mensagens, indentação, testes finais (10 min)

---

## Regras da Competição

- Trabalho em dupla — ambos devem participar ativamente
- É permitido consultar os materiais das aulas (slides, exercícios, exemplos)
- Não é permitido usar internet ou comunicar-se com outras duplas
- O arquivo .por deve ser entregue ao professor ao final do tempo
- Em caso de empate na pontuação total, o bônus de tempo define o vencedor

---

## Bônus (funcionalidades extras)

| Bônus | Pts |
|-------|-----|
| Validar se o nome do titular está em branco | +3 |
| Extrato filtrado por conta específica | +4 |
| Mensagens personalizadas no ranking (1º lugar, 2º lugar…) | +3 |

---

*Boa sorte, dupla! Que o melhor código vença.* 🏆
