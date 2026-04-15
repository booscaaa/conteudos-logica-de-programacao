# Desafio em Duplas — Banco CESURG

> **Formato:** Maratona Presencial · Duplas · 3 horas  
> **Pontuação máxima:** 100 pontos  
> **Linguagem:** Portugol Studio

---

## Tema: Sistema Bancário

Vocês vão construir o **Banco CESURG** — um sistema de gerenciamento bancário completo rodando no console do Portugol Studio.

O sistema deve permitir que um "atendente" cadastre clientes, realize operações financeiras e consulte um ranking dos maiores saldos.

---

## O que o sistema deve fazer

O programa inicia e exibe um **menu principal** que fica em loop até o usuário digitar `0` para sair.

```
╔══════════════════════════════╗
║        BANCO  CESURG         ║
╠══════════════════════════════╣
║  [1] Abrir conta             ║
║  [2] Depositar               ║
║  [3] Sacar                   ║
║  [4] Ver saldo               ║
║  [5] Extrato geral           ║
║  [6] Ranking Top 5           ║
║  [0] Sair                    ║
╚══════════════════════════════╝
```

---

## Funcionalidades Detalhadas

### [1] Abrir Conta
- Pede o **nome do titular**
- Pede um **depósito inicial**
- O depósito inicial deve ser **no mínimo R$ 50,00**
  - Se o valor for menor, exibe mensagem de erro e pede novamente (use `enquanto`)
- O sistema suporta **no máximo 10 contas** simultaneamente
  - Se já existirem 10 contas, exibe mensagem de erro
- Ao criar a conta, exibe o **número da conta** gerado automaticamente (1, 2, 3…)

### [2] Depositar
- Pede o **número da conta**
- Valida se a conta existe
- Pede o **valor a depositar** (deve ser positivo)
- Atualiza o saldo da conta
- Registra a transação no extrato

### [3] Sacar
- Pede o **número da conta**
- Valida se a conta existe
- Exibe o **saldo disponível**
- Pede o **valor a sacar**
- Valida: o valor deve ser **positivo** E **menor ou igual ao saldo**
  - Se saldo insuficiente: exibe mensagem de erro
- Atualiza o saldo da conta
- Registra a transação no extrato

### [4] Ver Saldo
- Pede o **número da conta**
- Valida se a conta existe
- Exibe: número da conta, nome do titular e saldo atual

### [5] Extrato Geral
- Exibe todas as transações registradas no sistema
- Para cada transação: tipo (ABERTURA / DEPOSITO / SAQUE), titular, valor e saldo após a operação
- Use um **laço `para`** para percorrer o vetor de transações

### [6] Ranking Top 5
- Lista os **5 clientes com maior saldo**, em ordem decrescente
- Se houver menos de 5 contas, exibe apenas as que existem
- Use **vetores + laço `para`** para ordenar (algoritmo de ordenação por seleção)
- Exibe posição (1°, 2°, 3°…), nome e saldo

### [0] Sair
- Exibe mensagem de despedida e encerra o programa

---

## Restrições Técnicas

| Restrição | Valor |
|-----------|-------|
| Máximo de contas | 10 |
| Máximo de transações no extrato | 20 |
| Linguagem | Portugol Studio |
| Funções personalizadas (`funcao`) | ❌ Não usar |
| Variáveis globais fora de `inicio()` | ❌ Não usar |

> **Dica:** Declare **todos** os vetores e variáveis no início da `funcao inicio()`, antes do `enquanto` do menu.

---

## Critérios de Avaliação

| Critério | Pontos |
|----------|--------|
| Menu funcional com `enquanto` + `escolha/caso` | 10 pts |
| Abrir conta com validação do depósito mínimo | 15 pts |
| Depositar com validação de valor positivo | 10 pts |
| Sacar com validação de saldo suficiente | 15 pts |
| Ver saldo | 5 pts |
| Extrato com vetor + `para` | 15 pts |
| Ranking Top 5 com ordenação | 20 pts |
| Qualidade do código (indentação, nomes de variáveis) | 10 pts |
| **Total** | **100 pts** |

---

## Conceitos Utilizados (Checklist)

Use isso para garantir que cobriu todos os tópicos das aulas:

- [ ] **Variáveis e tipos** — `inteiro`, `real`, `cadeia` (aula 02)
- [ ] **Condicionais** — `se`, `senao`, `senao se` (aula 03)
- [ ] **Álgebra booleana** — operadores `e`, `ou` nas validações (aula 04)
- [ ] **Switch/case** — `escolha/caso` para o menu (aula 05)
- [ ] **Laço `para`** — percorrer e ordenar vetores (aula 06)
- [ ] **Laço `enquanto`** — menu principal e validações (aula 07)
- [ ] **Vetores** — contas, saldos, extrato, ranking (aula 08)

---

## Ordem Sugerida de Implementação

Sugestão para não travar:

1. **Menu esqueleto** — `enquanto` + `escolha/caso` com opções vazias (10 min)
2. **Opção 1** — Abrir conta sem validação primeiro, depois adiciona o `enquanto` de validação (25 min)
3. **Opção 4** — Ver saldo (mais simples, testa se o vetor está funcionando) (10 min)
4. **Opção 2** — Depositar (15 min)
5. **Opção 3** — Sacar com validação de saldo (20 min)
6. **Opção 5** — Extrato (15 min)
7. **Opção 6** — Ranking com ordenação (35 min)
8. **Polimento** — mensagens, indentação, testes finais (10 min)

---

## Regras da Competição

- Trabalho **em dupla** — ambos devem participar ativamente
- É permitido consultar os materiais das aulas (slides, exercícios, exemplos)
- **Não** é permitido usar internet ou comunicar-se com outras duplas
- O arquivo `.por` deve ser entregue ao professor ao final do tempo
- Em caso de empate na pontuação, vence a dupla que entregou primeiro

---

## Bônus (até 10 pts extras)

Funcionalidades extras que rendem pontos adicionais:

| Bônus | Pts |
|-------|-----|
| Validar se o nome do titular está em branco (usar `comprimento()`) | +3 |
| Extrato filtrado por conta (mostrar apenas as transações de uma conta específica) | +4 |
| Mensagem personalizada no ranking: "🥇 Campeão:", "🥈 Vice:", "🥉 Terceiro:" | +3 |

---

*Boa sorte, dupla! Que o melhor código vença.* 🏆
