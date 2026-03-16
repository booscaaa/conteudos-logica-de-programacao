# 🏧 Desafio 4 — Caixa Eletrônico

> **Grupo 4** | Estrutura principal: `escolha / caso` + `se / senão` (validação)

---

## Briefing do Cliente

> *"Sou gerente de banco. Preciso de um sistema de caixa eletrônico simples onde o cliente informa o nome e o saldo atual da conta, depois escolhe uma operação: 1 para Consultar saldo, 2 para Depositar um valor ou 3 para Sacar um valor. O sistema executa a operação escolhida e exibe o resultado. No caso de saque, precisa validar se o cliente tem saldo suficiente."*

---

## Operações do Sistema

| Opção | Operação  | Comportamento |
|-------|-----------|---------------|
| 1     | Consultar | Exibe o saldo atual sem alteração |
| 2     | Depositar | Pede valor a depositar → novo saldo = saldo + valor |
| 3     | Sacar     | Pede valor a sacar → valida saldo → novo saldo = saldo - valor (se suficiente) |
| outro | Inválido  | Exibe mensagem de erro amigável |

---

## 👑 Tech Lead

### Responsabilidades
- Garantir que o Dev entenda as **duas estruturas combinadas**: `escolha` para a opção e `se/senão` dentro do caso 3 para validar o saque.
- Coordenar UX Writer para criar textos de todos os cenários (incluindo saque negado).
- Apresentar a solução demonstrando os 3 cenários de operação + o caso de saldo insuficiente.

### Checklist de entrega
- [ ] Dev usou `escolha(opcao)` para as 3 operações
- [ ] Dev usou `se(valor <= saldo)` dentro do caso 3 para validar saque
- [ ] Saldo não é alterado quando o saque é negado
- [ ] UX Writer criou texto para saque negado
- [ ] QA testou saque com saldo suficiente e insuficiente
- [ ] O grupo consegue explicar por que usou as duas estruturas juntas

---

## 🧑‍💼 Cliente

### Responsabilidades
- Esclarecer dúvidas sobre as regras de cada operação.
- Validar os 4 cenários ao final: consulta, depósito, saque válido e saque inválido.

### Perguntas que você deve saber responder
- O saldo inicial pode ter casas decimais? *(Sim — use `real`)*
- O valor depositado pode ser qualquer valor positivo? *(Sim — não precisa validar valor negativo)*
- O que acontece no saque com saldo exatamente igual ao valor? *(Deve ser permitido — `valor <= saldo`)*
- O sistema processa mais de uma operação? *(Não — ainda não vimos laços. Uma operação por execução)*
- O saldo atualizado aparece depois de depositar ou sacar? *(Sim — sempre exibir o saldo final)*

### Checklist de validação (faça ao final)

**Cenário 1 — Consulta:**
- [ ] Saldo inicial: 500.00 | Opção: 1 → Exibe saldo sem alterar

**Cenário 2 — Depósito:**
- [ ] Saldo inicial: 300.00 | Opção: 2 | Valor: 150.00 → Novo saldo: 450.00

**Cenário 3 — Saque válido:**
- [ ] Saldo inicial: 500.00 | Opção: 3 | Valor: 200.00 → Novo saldo: 300.00

**Cenário 4 — Saque inválido:**
- [ ] Saldo inicial: 100.00 | Opção: 3 | Valor: 200.00 → Mensagem de saldo insuficiente, saldo permanece 100.00

**Cenário 5 — Opção inválida:**
- [ ] Opção: 7 → Mensagem de erro amigável

---

## 💻 Dev

### Responsabilidades
- Combinar `escolha/caso` para a navegação de operações com `se/senão` para validação do saque.

### Fluxo esperado do programa
1. Declarar variáveis: `cadeia nome`, `real saldo`, `real valor`, `inteiro opcao`
2. Solicitar e ler nome e saldo inicial
3. Exibir o menu de operações (textos do UX Writer)
4. Ler a opção escolhida
5. Usar `escolha(opcao)` com:
   - `caso 1`: exibir saldo atual
   - `caso 2`: ler valor, calcular `saldo = saldo + valor`, exibir novo saldo
   - `caso 3`: ler valor, usar `se (valor <= saldo)` para validar — se ok, calcular `saldo = saldo - valor` e exibir; senão, exibir mensagem de saldo insuficiente
   - `outrocaso`: exibir mensagem de opção inválida

### Dicas técnicas
- `opcao` deve ser `inteiro` (o `escolha` precisa de inteiro ou caracter).
- `saldo` e `valor` devem ser `real` — valores financeiros têm centavos.
- No caso 3: use `valor <= saldo` — o `<=` permite sacar exatamente o valor total do saldo.
- A operação `saldo = saldo + valor` acontece **dentro** do `caso 2` — fora dele, o saldo não muda.

---

## 🔍 QA (Tester)

### Responsabilidades
- Testar os 4 cenários de operação + opção inválida.
- Verificar que o saldo **não muda** quando a operação falha.

### Casos de teste obrigatórios

| # | Nome | Saldo Inicial | Opção | Valor | Saldo esperado após | Mensagem esperada | Resultado |
|---|------|--------------|-------|-------|--------------------|--------------------|-----------|
| CT01 | Ana | 500.00 | 1 | — | 500.00 | Exibe saldo de 500.00 | |
| CT02 | Bruno | 300.00 | 2 | 150.00 | 450.00 | Depósito confirmado, saldo 450.00 | |
| CT03 | Carol | 500.00 | 3 | 200.00 | 300.00 | Saque confirmado, saldo 300.00 | |
| CT04 | Diego | 500.00 | 3 | 500.00 | 0.00 | Saque do valor total permitido | |
| CT05 | Eva | 100.00 | 3 | 200.00 | 100.00 | Saldo insuficiente, saldo não muda | |
| CT06 | Felipe | 100.00 | 3 | 100.01 | 100.00 | Saldo insuficiente (diferença de centavo) | |
| CT07 | Gabi | 400.00 | 7 | — | 400.00 | Opção inválida, saldo não muda | |
| CT08 | Hugo | 0.00 | 3 | 10.00 | 0.00 | Saldo insuficiente (saldo zerado) | |

> Preencha **Resultado** com ✅ OK ou ❌ FALHA — descreva o que aconteceu.

### Onde os bugs costumam aparecer
- Saldo é alterado mesmo quando o saque é negado (falta o `se/senão`).
- Saque com valor **igual** ao saldo é negado incorretamente (deveria usar `<=` não `<`).
- O saldo atualizado não é exibido após depósito ou saque.

---

## 🎨 UX Writer

### Responsabilidades
- Criar textos para todos os cenários — incluindo os dois desfechos do saque (aprovado e negado).
- O menu de opções deve ser claro e visualmente organizado.

### Textos que você precisa criar

| Momento | Exemplo ruim | Seu texto |
|---------|-------------|-----------|
| Abertura | `"banco"` | _"=== Banco CESURG — Caixa Eletrônico ==="_ |
| Saudação | `"nome:"` | _"Bem-vindo! Qual é o seu nome? "_ |
| Pedir saldo inicial | `"saldo"` | _"Informe o saldo da sua conta (R$): "_ |
| Menu — título | `"menu"` | _"--- O que deseja fazer? ---"_ |
| Menu — opção 1 | `"1"` | _"[1] Consultar saldo"_ |
| Menu — opção 2 | `"2"` | _"[2] Depositar"_ |
| Menu — opção 3 | `"3"` | _"[3] Sacar"_ |
| Pedir opção | `"op"` | _"Digite a opção desejada: "_ |
| Consulta — resultado | `"saldo="` | _"Seu saldo atual é: R$ [valor]"_ |
| Depósito — pedir valor | `"val"` | _"Informe o valor a depositar (R$): "_ |
| Depósito — confirmação | `"ok"` | _"Depósito realizado! Novo saldo: R$ [valor]"_ |
| Saque — pedir valor | `"val"` | _"Informe o valor a sacar (R$): "_ |
| Saque — aprovado | `"ok"` | _"Saque realizado com sucesso! Saldo restante: R$ [valor]"_ |
| Saque — negado | `"erro"` | _"Saldo insuficiente. Operação cancelada. Saldo atual: R$ [valor]"_ |
| Opção inválida | `"inv"` | _"Opção inválida. Por favor, escolha 1, 2 ou 3."_ |

### Regras de qualidade
- O saldo deve sempre aparecer formatado como valor monetário: `R$ 450,00`.
- A mensagem de saque negado não deve ser agressiva — é um feedback, não um erro grave.
- O nome do cliente deve aparecer pelo menos na saudação inicial.

---

## Estruturas que devem ser usadas

- `escolha / caso / outrocaso` ← OBRIGATÓRIO (para navegar entre as 3 operações)
- `se / senao` ← OBRIGATÓRIO (para validar o saque)

## Estruturas proibidas

- `enquanto / para / repita` ← PENALIDADE -2 pontos
