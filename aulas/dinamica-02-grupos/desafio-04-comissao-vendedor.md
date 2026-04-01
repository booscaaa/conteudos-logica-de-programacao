# 💼 Desafio 4 — Comissão do Vendedor

> **Grupo 4** | Estruturas principais: `enquanto` + `escolha/caso` + `se/senão`

---

## Briefing do Cliente

> *"Sou gerente de uma loja. Meu vendedor registra cada venda pelo tipo do produto. Quando terminar o dia, digita 0. O sistema calcula a comissão total. Se passar de R$ 500,00, ganha um bônus de 20% sobre a comissão."*

---

## Tabela de comissões por tipo de produto

| Tipo | Categoria       | Comissão por venda |
|------|-----------------|--------------------|
| 1    | Eletrônico      | R$ 50,00           |
| 2    | Eletrodoméstico | R$ 35,00           |
| 3    | Roupa           | R$ 15,00           |
| 4    | Acessório       | R$  8,00           |
| 0    | Encerrar dia    | —                  |

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
- [ ] O grupo consegue explicar como o padrão de `enquanto` com acumulador funciona

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O bônus de 20% é calculado sobre a comissão total ou sobre cada venda?
- O que acontece se o vendedor digitar um tipo inválido (ex: 7)?
- O sistema mostra a comissão de cada venda separadamente ou só o total?
- Se não fizer nenhuma venda (digitar 0 logo), o que aparece?

### Checklist de validação (faça ao final)
- [ ] Tipo 1 → R$ 50,00 somado à comissão
- [ ] Tipo 4 → R$ 8,00 somado à comissão
- [ ] Tipo inválido → aviso, mas loop continua
- [ ] Tipo 0 → loop encerra e comissão é exibida
- [ ] Comissão total de R$ 550,00 → bônus de 20% aplicado (total = R$ 660,00)
- [ ] Comissão total de R$ 400,00 → sem bônus

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** `enquanto`, `escolha/caso` e `se/senão`.
- Não usar vetores, matrizes ou funções.

### Fluxo esperado do programa
1. Declarar variáveis: `inteiro tipo`, `real comissao_total, bonus`
2. Inicializar `comissao_total = 0.0`
3. Exibir saudação (texto do UX Writer)
4. Ler o primeiro `tipo`
5. Entrar no `enquanto (tipo != 0)`:
   - `escolha(tipo)` para somar a comissão correspondente
   - `outrocaso` exibe mensagem de tipo inválido
   - Ler o próximo `tipo`
6. Após o loop: `se (comissao_total > 500.0)` calcular bônus de 20% e somar
7. Exibir comissão total final

### Dicas técnicas
- O padrão `enquanto` com leitura antes do loop e releitura no final é o mesmo do Desafio 1 — mas agora com `comissao_total` ao invés de `total`.
- Use `real` para `comissao_total` — ela acumula centavos.
- Para o bônus: `bonus = comissao_total * 0.20` e depois `comissao_total = comissao_total + bonus`.
- O `escolha` só aceita `inteiro` — `tipo` deve ser `inteiro`.
- Mostre o bônus separado e o total final para o usuário entender o cálculo.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| #    | Tipos digitados (em ordem)     | Comissão esperada | Bônus? | Total final | Resultado |
|------|--------------------------------|-------------------|--------|-------------|-----------|
| CT01 | 1, 0                           | R$ 50,00          | Não    | R$ 50,00    |           |
| CT02 | 3, 3, 3, 0                     | R$ 45,00          | Não    | R$ 45,00    |           |
| CT03 | 1, 1, 1, 0                     | R$ 150,00         | Não    | R$ 150,00   |           |
| CT04 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 | R$ 500,00       | Não (= 500, não >) | R$ 500,00 |  |
| CT05 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0 | R$ 515,00  | Sim    | R$ 618,00   |           |
| CT06 | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0 | R$ 525,00 | Sim | R$ 630,00 |        |
| CT07 | 7 (inválido), 0                | R$ 0,00           | Não    | R$ 0,00, aviso de inválido |  |
| CT08 | 0 (imediatamente)              | R$ 0,00           | Não    | Loop não executa |        |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Comissão somada errada para algum tipo.
- Bônus aplicado quando comissão é exatamente R$ 500,00 (condição é `> 500`, não `>= 500`).
- Bônus não aplicado quando comissão supera R$ 500,00.
- Loop não encerra ao digitar 0.
- Tipo inválido trava o programa.

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"comissao"` | _"Sistema de Comissão — Registro de Vendas 💼"_ |
| Instrução loop | Antes do leia(tipo) | `"tipo:"` | _"Digite o tipo do produto vendido (0 para encerrar): "_ |
| Venda tipo 1 | caso 1 | `"ok +50"` | _"Eletrônico registrado. +R$ 50,00 de comissão."_ |
| Venda tipo 2 | caso 2 | `"ok +35"` | _"Eletrodoméstico registrado. +R$ 35,00 de comissão."_ |
| Venda tipo 3 | caso 3 | `"ok +15"` | _"Roupa registrada. +R$ 15,00 de comissão."_ |
| Venda tipo 4 | caso 4 | `"ok +8"` | _"Acessório registrado. +R$ 8,00 de comissão."_ |
| Tipo inválido | outrocaso | `"erro"` | _"Tipo inválido. Digite um número de 1 a 4 ou 0 para sair."_ |
| Comissão base | Após o loop | `"com ="` | _"Comissão do dia: R$ [valor]"_ |
| Bônus aplicado | se comissao > 500 | `"+bonus"` | _"Parabéns! Bônus de 20% aplicado: +R$ [valor]"_ |
| Total final | Última linha | `"tot:"` | _"Total a receber: R$ [valor]. Bom trabalho!"_ |

### Regras de qualidade
- Use vírgula decimal brasileira nos valores: `R$ 50,00` — não `50.00`.
- Mostre os valores intermediários (comissão base, bônus separado) — não só o total.
- Tom motivador: o vendedor merece reconhecimento pelo esforço.
- Máximo de 2 linhas por mensagem.

---

## Estruturas que devem ser usadas

- `enquanto` ← OBRIGATÓRIO (laço principal de registro de vendas)
- `escolha / caso / outrocaso` ← OBRIGATÓRIO (identificar tipo do produto)
- `se / senão` ← OBRIGATÓRIO (aplicar bônus quando comissão > R$ 500,00)

## Estruturas proibidas

- Vetores e matrizes ← PENALIDADE -2 pontos
- Funções e procedimentos personalizados ← PENALIDADE -2 pontos
