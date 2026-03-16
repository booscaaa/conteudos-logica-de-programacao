# 🍔 Desafio 1 — Cardápio Digital

> **Grupo 1** | Estrutura principal: `escolha / caso`

---

## Briefing do Cliente

> *"Minha lanchonete precisa de um sistema simples. O atendente digita o número do pedido (1 a 5) e o programa deve mostrar o nome do item, o preço e uma mensagem de confirmação. Se o número não existir no cardápio, o sistema deve exibir uma mensagem de erro amigável."*

---

## Cardápio

| Número | Item         | Preço    |
|--------|--------------|----------|
| 1      | X-Burguer    | R$ 18,00 |
| 2      | X-Frango     | R$ 16,00 |
| 3      | Batata Frita | R$ 12,00 |
| 4      | Refrigerante | R$  7,00 |
| 5      | Suco Natural | R$  9,00 |

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
- [ ] O grupo consegue explicar POR QUE usou `escolha/caso` e não `se/senão`

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O que acontece se o atendente digitar 0 ou 6?
- O sistema precisa repetir para outro pedido? *(Resposta: não — ainda não vimos laços)*
- O preço precisa aparecer com vírgula? *(Resposta: sim, formatar direitinho no texto)*

### Checklist de validação (faça ao final)
- [ ] Digitei 1 → apareceu "X-Burguer — R$ 18,00" com mensagem de confirmação
- [ ] Digitei 5 → apareceu "Suco Natural — R$ 9,00"
- [ ] Digitei 0 → apareceu mensagem de erro amigável
- [ ] Digitei 9 → apareceu mensagem de erro amigável
- [ ] Os textos estão claros e sem erros de português

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** a estrutura `escolha / caso`.
- Não usar nenhuma estrutura proibida (laços, funções, vetores).

### Fluxo esperado do programa
1. Declarar variável `inteiro opcao`
2. Exibir saudação (texto do UX Writer)
3. Solicitar e ler a opção do atendente
4. Usar `escolha(opcao)` com um `caso` para cada número de 1 a 5
5. Cada `caso` deve exibir nome + preço + mensagem de confirmação (textos do UX Writer)
6. O `outrocaso` deve exibir mensagem de erro amigável

### Dicas técnicas
- Declare `inteiro opcao` — o `escolha` não aceita `real`.
- Cada `caso` pode ter múltiplos `escreva()`.
- O `outrocaso` cobre qualquer número fora de 1-5 automaticamente.
- Peça os textos prontos ao UX Writer antes de escrever os `escreva()`.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| # | Entrada | Saída esperada | Resultado |
|---|---------|----------------|-----------|
| CT01 | opcao = 1 | Nome "X-Burguer", preço R$ 18,00, mensagem de confirmação | |
| CT02 | opcao = 3 | Nome "Batata Frita", preço R$ 12,00, mensagem de confirmação | |
| CT03 | opcao = 5 | Nome "Suco Natural", preço R$ 9,00, mensagem de confirmação | |
| CT04 | opcao = 0 | Mensagem de erro amigável, sem preço | |
| CT05 | opcao = 6 | Mensagem de erro amigável, sem preço | |
| CT06 | opcao = 9 | Mensagem de erro amigável, sem preço | |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Número errado de item mostra preço diferente do cardápio.
- Número inválido não mostra mensagem de erro.
- O programa trava ou exibe erro de sintaxe.

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"oi"` | _"Bem-vindo à Lanchonete do CESURG! 🍔"_ |
| Instrução | Antes do leia(opcao) | `"opcao:"` | _"Digite o número do item desejado (1 a 5): "_ |
| Confirmação | Após cada caso válido | `"ok"` | _"Pedido registrado! Bom apetite! 🎉"_ |
| Erro | No outrocaso | `"Erro"` | _"Opção inválida. Por favor, escolha entre 1 e 5."_ |

### Regras de qualidade
- Sem abreviações ou texto de programador (`opcao`, `val`, `res`).
- Use vírgula decimal brasileira nos preços: `R$ 18,00` — não `18.00`.
- Seja consistente: se começou com "!" termine com "!".
- Máximo de 2 linhas por mensagem — não exagere.

---

## Estrutura que deve ser usada

- `escolha / caso / outrocaso` ← OBRIGATÓRIO

## Estruturas proibidas

- `enquanto / para / repita` ← PENALIDADE -2 pontos
