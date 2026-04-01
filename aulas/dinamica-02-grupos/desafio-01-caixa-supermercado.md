# 🛒 Desafio 1 — Caixa de Supermercado

> **Grupo 1** | Estruturas principais: `enquanto` + `escolha/caso` + `se/senão`

---

## Briefing do Cliente

> *"Preciso de um sistema de caixa para o meu mercado. O atendente vai registrando os produtos um a um pelo código. Quando terminar, digita 0 para encerrar. O programa deve mostrar o total da compra e, se passar de R$ 100,00, aplica 10% de desconto automático."*

---

## Produtos

| Código | Produto          | Preço unitário |
|--------|------------------|----------------|
| 1      | Arroz 5kg        | R$ 28,00       |
| 2      | Feijão 1kg       | R$  9,50       |
| 3      | Azeite 500ml     | R$ 24,90       |
| 4      | Macarrão 500g    | R$  5,80       |
| 5      | Molho de Tomate  | R$  4,20       |
| 0      | Encerrar compra  | —              |

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
- [ ] O grupo consegue explicar POR QUE usou `enquanto` ao invés de um `se/senão` simples

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O que acontece se o atendente digitar um código inválido (ex: 7)?
- O desconto aplica sobre o total ou sobre cada produto?
- O programa mostra o total com desconto ou os dois valores (antes e depois)?
- Se não comprar nada (digitar 0 logo no início), o que aparece?

### Checklist de validação (faça ao final)
- [ ] Digitei código 1 → preço do Arroz foi somado ao total
- [ ] Digitei código 0 → loop encerrou e total foi exibido
- [ ] Compra de R$ 38,50 (Arroz + Feijão) → sem desconto
- [ ] Compra acima de R$ 100,00 → desconto de 10% aplicado e mostrado
- [ ] Código inválido (ex: 9) → mensagem de aviso, mas loop continua
- [ ] Os textos estão claros e sem erros de português

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** `enquanto`, `escolha/caso` e `se/senão`.
- Não usar vetores, matrizes ou funções.

### Fluxo esperado do programa
1. Declarar variáveis: `inteiro codigo`, `real total`, `real desconto`
2. Exibir saudação (texto do UX Writer)
3. Inicializar `total = 0.0`
4. Ler o primeiro `codigo`
5. Entrar no `enquanto (codigo != 0)`:
   - Usar `escolha(codigo)` para somar o preço ao total
   - `outrocaso` exibe mensagem de código inválido
   - Ler o próximo `codigo`
6. Após o loop: `se (total > 100.0)` calcular e aplicar desconto de 10%
7. Exibir total final

### Dicas técnicas
- Leia o `codigo` **antes** de entrar no `enquanto` — senão o loop nunca começa.
- Dentro do loop, o **último comando** deve ser `leia(codigo)` de novo.
- Use `real` para o `total` — ele acumula valores com centavos.
- O `escolha` só aceita `inteiro` — `codigo` deve ser `inteiro`.
- Para calcular desconto: `desconto = total * 0.10` e depois `total = total - desconto`.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| #    | Entradas (em ordem)      | Saída esperada                                              | Resultado |
|------|--------------------------|-------------------------------------------------------------|-----------|
| CT01 | codigo = 1, depois 0     | Total R$ 28,00 — sem desconto                               |           |
| CT02 | codigo = 2, depois 0     | Total R$ 9,50 — sem desconto                                |           |
| CT03 | codigo = 1, 2, depois 0  | Total R$ 37,50 — sem desconto                               |           |
| CT04 | codigo = 1, 3, 1, depois 0 | Total R$ 81,90 — sem desconto                             |           |
| CT05 | codigo = 1, 3, 1, 2, depois 0 | Total R$ 91,40 — sem desconto                         |           |
| CT06 | codigo = 1, 1, 1, 1, depois 0 | Total R$ 112,00 → com desconto → R$ 100,80            |           |
| CT07 | codigo = 9 (inválido), depois 0 | Mensagem de código inválido, total R$ 0,00           |           |
| CT08 | codigo = 0 (imediatamente) | Loop não executa, total R$ 0,00                          |           |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Preço errado somado ao total.
- Desconto aplicado em compras abaixo de R$ 100,00.
- Desconto não aplicado em compras acima de R$ 100,00.
- Loop não encerra ao digitar 0.
- Código inválido trava o programa.

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"sistema caixa"` | _"Bem-vindo ao Caixa do MercadoBom! 🛒"_ |
| Instrução loop | Antes do leia(codigo) | `"cod:"` | _"Digite o código do produto (0 para encerrar): "_ |
| Produto registrado | Dentro do escolha, cada caso | `"ok"` | _"✔ Arroz 5kg — R$ 28,00 adicionado."_ |
| Código inválido | No outrocaso | `"erro"` | _"Código inválido. Digite um número de 1 a 5."_ |
| Subtotal | Antes do se de desconto | `"total ="` | _"Subtotal da compra: R$ [valor]"_ |
| Desconto | Quando total > R$ 100 | `"desc 10%"` | _"Desconto de 10% aplicado! Você economizou R$ [valor]."_ |
| Total final | Ao encerrar | `"total final:"` | _"Total a pagar: R$ [valor]. Obrigado pela compra!"_ |

### Regras de qualidade
- Sem abreviações ou texto de programador (`cod`, `val`, `tot`).
- Use vírgula decimal brasileira nos preços: `R$ 28,00` — não `28.00`.
- Seja consistente: o tom deve ser simpático em todo o programa.
- Máximo de 2 linhas por mensagem — não exagere.

---

## Estruturas que devem ser usadas

- `enquanto` ← OBRIGATÓRIO (laço principal de leitura de produtos)
- `escolha / caso / outrocaso` ← OBRIGATÓRIO (identificar produto pelo código)
- `se / senão` ← OBRIGATÓRIO (aplicar desconto)

## Estruturas proibidas

- Vetores e matrizes ← PENALIDADE -2 pontos
- Funções e procedimentos personalizados ← PENALIDADE -2 pontos
