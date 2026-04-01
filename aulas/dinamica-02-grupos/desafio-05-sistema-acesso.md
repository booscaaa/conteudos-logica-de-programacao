# 🔐 Desafio 5 — Sistema de Acesso

> **Grupo 5** | Estruturas principais: `enquanto` + `se/senão` + `escolha/caso`

---

## Briefing do Cliente

> *"Preciso de um sistema de acesso com PIN numérico. O usuário tem até 3 tentativas para acertar a senha. Se acertar, entra num menu com 3 opções. Se errar 3 vezes, o sistema bloqueia o acesso."*

---

## Regras do sistema

| Situação | Comportamento |
|----------|---------------|
| PIN correto (1234) | Acesso liberado → exibe menu |
| PIN errado (tentativa 1 ou 2) | Mensagem de erro + nova tentativa |
| PIN errado (tentativa 3) | Acesso bloqueado — sem novas tentativas |

## Menu (após autenticação)

| Opção | Ação |
|-------|------|
| 1 | Ver relatório do dia |
| 2 | Registrar ponto |
| 3 | Sair do sistema |

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
- [ ] O grupo consegue explicar a condição composta do `enquanto`: `tentativas < 3 e nao autenticado`

---

## 🧑‍💼 Cliente

### Responsabilidades
- Ser a fonte de verdade do projeto — o grupo tira dúvidas **com você**.
- Ler o briefing acima e "defender" o que o sistema deve fazer.
- Ao final, validar se o programa faz exatamente o que foi pedido.

### Perguntas que você deve saber responder
- O menu aparece mais de uma vez ou só uma vez?
- O que acontece se o usuário digitar uma opção inválida no menu?
- Após 3 erros, o sistema deixa tentar de novo? *(Resposta: não — bloqueia definitivamente)*
- Quantas vezes o menu pode ser acessado depois de autenticado? *(Resposta: apenas 1 vez — sem segundo laço)*

### Checklist de validação (faça ao final)
- [ ] PIN 1234 na primeira tentativa → acesso liberado, menu exibido
- [ ] PIN errado na 1ª, certo na 2ª → acesso liberado
- [ ] PIN errado nas 3 tentativas → mensagem de bloqueio, menu não aparece
- [ ] Menu opção 1 → mensagem de relatório
- [ ] Menu opção 2 → mensagem de registro de ponto
- [ ] Menu opção 3 → mensagem de saída
- [ ] Menu opção inválida → mensagem de erro amigável

---

## 💻 Dev

### Responsabilidades
- Escrever o algoritmo no Portugol Studio.
- Usar **obrigatoriamente** `enquanto`, `se/senão` e `escolha/caso`.
- Não usar vetores, matrizes ou funções.

### Fluxo esperado do programa
1. Declarar variáveis: `inteiro pin, tentativas, opcao`, `logico autenticado`
2. Inicializar: `tentativas = 0`, `autenticado = falso`
3. Exibir saudação (texto do UX Writer)
4. `enquanto (tentativas < 3 e nao autenticado)`:
   - Ler `pin`
   - `se (pin == 1234)`: `autenticado = verdadeiro`, mensagem de sucesso
   - `senao`: `tentativas = tentativas + 1`, mensagem de erro com tentativas restantes
5. Após o loop:
   - `se (autenticado)`:
     - Exibir menu
     - `leia(opcao)`
     - `escolha(opcao)` para executar cada ação
   - `senao`: mensagem de acesso bloqueado

### Dicas técnicas
- `logico autenticado = falso` — variável booleana que muda para `verdadeiro` quando o PIN acerta.
- A condição `nao autenticado` dentro do `enquanto` garante que o loop para imediatamente ao acertar.
- `tentativas restantes = 3 - tentativas` pode ser calculado e exibido na mensagem de erro.
- Use `inteiro pin` — o PIN é tratado como número, não como texto.
- O `escolha(opcao)` do menu fica **dentro** do `se (autenticado)`, não fora.

---

## 🔍 QA (Tester)

### Responsabilidades
- Criar a tabela de casos de teste **antes** do Dev terminar.
- Executar cada teste e registrar o resultado.
- Reportar bugs com clareza: o que foi digitado e o que saiu errado.

### Casos de teste obrigatórios

| #    | PINs digitados              | Ação no menu | Resultado esperado                              | Resultado |
|------|-----------------------------|--------------|------------------------------------------------|-----------|
| CT01 | 1234 (1ª tentativa)         | opcao = 1    | Acesso na 1ª tentativa, relatório exibido      |           |
| CT02 | 1234 (1ª tentativa)         | opcao = 2    | Acesso na 1ª tentativa, ponto registrado       |           |
| CT03 | 1234 (1ª tentativa)         | opcao = 3    | Acesso na 1ª tentativa, saída do sistema       |           |
| CT04 | 9999, 1234 (2ª tentativa)   | opcao = 1    | 1 erro + acesso na 2ª tentativa                |           |
| CT05 | 9999, 9999, 1234 (3ª tent.) | opcao = 1    | 2 erros + acesso na 3ª tentativa               |           |
| CT06 | 9999, 9999, 9999 (3 erros)  | —            | Acesso bloqueado, menu não aparece             |           |
| CT07 | 1234 (1ª tentativa)         | opcao = 9    | Menu com opção inválida → mensagem de erro     |           |
| CT08 | 0000, 1111, 2222 (3 erros)  | —            | Cada erro mostra tentativas restantes corretas |           |

> Preencha a coluna **Resultado** com ✅ OK ou ❌ FALHA — descrição do problema.

### O que considerar FALHA
- Loop continua após o PIN correto.
- Loop para antes de 3 tentativas erradas.
- Menu aparece mesmo com acesso bloqueado.
- Tentativas restantes calculadas erradas.
- Opção inválida no menu trava o programa.

---

## 🎨 UX Writer

### Responsabilidades
- Definir **todos** os textos que aparecem no programa.
- Entregar os textos ao Dev antes de ele codificar.
- Garantir que os textos são claros, sem erros de português e amigáveis.

### Textos que você precisa criar

| Momento | Onde aparece | Exemplo de texto ruim | Seu texto aqui |
|---------|-------------|----------------------|----------------|
| Abertura | Início do programa | `"sistema"` | _"Sistema de Controle de Acesso 🔐"_ |
| Pedir PIN | Antes do leia(pin) dentro do enquanto | `"pin:"` | _"Digite seu PIN de 4 dígitos: "_ |
| PIN correto | se pin == 1234 | `"ok"` | _"Acesso liberado! Bem-vindo. ✅"_ |
| PIN errado | senao (tentativa 1 ou 2) | `"errou"` | _"PIN incorreto. Tentativas restantes: [N]."_ |
| Bloqueio | senao do autenticado (após 3 erros) | `"bloq"` | _"Acesso bloqueado. Contate o administrador."_ |
| Cabeçalho menu | Após autenticação | `"menu"` | _"=== MENU PRINCIPAL ==="_ |
| Opção 1 | caso 1 do escolha | `"rel"` | _"Relatório do dia: nenhuma ocorrência registrada."_ |
| Opção 2 | caso 2 do escolha | `"pont"` | _"Ponto registrado com sucesso! ⏱"_ |
| Opção 3 | caso 3 do escolha | `"sair"` | _"Saindo do sistema. Até logo!"_ |
| Opção inválida | outrocaso do escolha | `"inv"` | _"Opção inválida. Escolha 1, 2 ou 3."_ |

### Regras de qualidade
- O PIN nunca deve aparecer na tela — não exiba o número que o usuário digitou.
- O número de tentativas restantes deve ser dinâmico na mensagem de erro.
- Use tom sério e profissional — é um sistema de segurança.
- Máximo de 2 linhas por mensagem.

---

## Estruturas que devem ser usadas

- `enquanto` ← OBRIGATÓRIO (laço de tentativas de autenticação, com condição composta)
- `se / senão` ← OBRIGATÓRIO (verificar PIN e verificar se autenticado após o loop)
- `escolha / caso / outrocaso` ← OBRIGATÓRIO (menu de opções após autenticação)

## Estruturas proibidas

- Vetores e matrizes ← PENALIDADE -2 pontos
- Funções e procedimentos personalizados ← PENALIDADE -2 pontos
