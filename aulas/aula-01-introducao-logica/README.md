# Introdução à Lógica de Programação

> "A lógica é o início da sabedoria, não o fim." — Leonard Nimoy (Mr. Spock, Star Trek)

---

## 1. O que é Lógica?

**Lógica** é a ciência do raciocínio correto. É a disciplina que estuda as formas válidas de pensar, argumentar e chegar a conclusões verdadeiras a partir de premissas.

Na programação, **lógica é tudo**. Quando você escreve um programa, você está descrevendo para o computador uma sequência de passos lógicos que ele deve seguir para resolver um problema.

### Exemplo do dia a dia

Pense em uma receita de bolo:

```
1. Pegue os ingredientes
2. Misture os ingredientes secos
3. Adicione os ovos e o leite
4. Misture tudo
5. Despeje na forma
6. Leve ao forno por 40 minutos
7. Retire do forno e espere esfriar
```

Isso **é um algoritmo** — uma sequência de passos ordenados para resolver um problema. É exatamente isso que você fará ao programar!

---

## 2. Sócrates e a Lógica Clássica

### Quem foi Sócrates?

**Sócrates** (470 a.C. — 399 a.C.) foi um filósofo grego considerado o pai da filosofia ocidental. Ele não deixou nada escrito — tudo que sabemos dele vem dos relatos de seu discípulo **Platão**.

Sócrates ficou famoso pelo **Método Socrático** (ou **Maiêutica**): um processo de perguntas e respostas que leva o interlocutor a encontrar a verdade por si mesmo.

> "Só sei que nada sei." — Sócrates

### Aristóteles e a Lógica Formal

O discípulo de Platão, **Aristóteles** (384 a.C. — 322 a.C.), foi quem sistematizou a lógica como disciplina formal. Ele criou o conceito de **silogismo**.

#### O que é um Silogismo?

Um silogismo é um argumento com **duas premissas** que levam a uma **conclusão**:

```
Premissa 1:  Todo ser humano é mortal.
Premissa 2:  Sócrates é um ser humano.
Conclusão:   Portanto, Sócrates é mortal.
```

Isso pode parecer simples, mas é exatamente a estrutura lógica que está por trás das instruções `se/então` (condicionais) em programação:

```
SE (usuário tem mais de 18 anos)
   ENTÃO (permita o acesso)
SENÃO
   (bloqueie o acesso)
```

### A Lógica Booleana — George Boole

Quase 2000 anos depois de Aristóteles, o matemático inglês **George Boole** (1815 — 1864) formalizou a lógica em termos matemáticos, criando o que chamamos de **Álgebra Booleana**.

Boole propôs que qualquer proposição lógica poderia ser representada com apenas **dois valores**:

| Valor | Significado |
|-------|-------------|
| `1` (VERDADEIRO) | A proposição é verdadeira |
| `0` (FALSO) | A proposição é falsa |

Operadores lógicos básicos:

| Operador | Símbolo | Descrição |
|----------|---------|-----------|
| E (AND) | `&&` | Verdadeiro somente se AMBOS forem verdadeiros |
| OU (OR) | `\|\|` | Verdadeiro se PELO MENOS UM for verdadeiro |
| NÃO (NOT) | `!` | Inverte o valor |

Esse trabalho de Boole, publicado em 1854, seria o fundamento teórico de todos os computadores modernos — mas isso só seria percebido quase 100 anos depois.

---

## 3. Alan Turing e a Revolução do Século XX

### Quem foi Alan Turing?

**Alan Mathison Turing** (1912 — 1954) foi um matemático, lógico, cientista da computação e criptoanalista britânico. É amplamente considerado o **pai da computação moderna** e da inteligência artificial.

Turing foi um gênio que viveu uma vida trágica: perseguido pelo governo britânico por ser homossexual numa época em que isso era crime, ele foi quimicamente castrado e morreu aos 41 anos, em circunstâncias ainda debatidas pelos historiadores.

Em 2013, a Rainha Elizabeth II concedeu-lhe um perdão póstumo. Em 2021, seu rosto passou a estampar a cédula de 50 libras no Reino Unido.

> Ironicamente, o homem que mais contribuiu para a criação dos computadores foi destruído pelo próprio governo que usou seu gênio para vencer a Segunda Guerra Mundial.

### A Máquina de Turing (1936)

Em 1936, com apenas 24 anos, Turing publicou o artigo *"On Computable Numbers"* onde descreveu um dispositivo abstrato chamado **Máquina de Turing**.

A máquina é conceitual (não foi fisicamente construída por Turing), mas define o que um computador pode ou não pode fazer.

#### Como funciona a Máquina de Turing?

```
┌─────────────────────────────────────────────┐
│            FITA INFINITA                     │
│  ...│ 0 │ 1 │ 1 │ 0 │ 1 │ 0 │ 0 │ 1 │...  │
│              ▲                               │
│         CABEÇA DE LEITURA/ESCRITA            │
└─────────────────────────────────────────────┘
                    │
         ┌──────────▼──────────┐
         │   UNIDADE DE        │
         │   CONTROLE          │
         │   (Estado atual)    │
         │   Tabela de regras  │
         └─────────────────────┘
```

A máquina possui:

1. **Fita infinita** — dividida em células, cada uma podendo conter um símbolo
2. **Cabeça de leitura/escrita** — lê e escreve símbolos na fita, e se move para a esquerda ou direita
3. **Tabela de regras** — define o que fazer com base no estado atual e no símbolo lido
4. **Registrador de estado** — armazena o estado atual da máquina

#### O que isso tem a ver com programação?

A Máquina de Turing demonstrou que qualquer problema que pode ser computado pode ser resolvido por uma máquina com essas 4 partes simples. Isso significa que:

- **Qualquer linguagem de programação suficientemente poderosa** pode resolver os mesmos problemas
- Portugol, Python, Java, C, JavaScript — todas são **Turing completas**
- Seu computador de hoje é, em essência, uma Máquina de Turing extremamente rápida e sofisticada

### Quebrando a Enigma — Segunda Guerra Mundial

Durante a Segunda Guerra, Turing liderou a equipe britânica em **Bletchley Park** que decifrou a **Máquina Enigma** nazista — um dispositivo de criptografia que os alemães consideravam inquebrável.

A decifração da Enigma permitiu que os Aliados lessem as comunicações secretas nazistas, contribuindo decisivamente para o fim da guerra. Estima-se que esse trabalho **encurtou a guerra em 2 a 4 anos** e salvou entre **14 e 21 milhões de vidas**.

O trabalho de Turing em Bletchley Park só foi desclassificado pelo governo britânico em 2009.

### O Teste de Turing (1950)

Em 1950, Turing publicou o artigo *"Computing Machinery and Intelligence"*, onde propôs a questão:

> **"Podem as máquinas pensar?"**

Para responder isso, ele criou o **Jogo da Imitação** (depois chamado de **Teste de Turing**):

```
┌─────────────┐        Perguntas        ┌─────────────────┐
│   HUMANO    │ ──────────────────────> │  HUMANO ou IA?  │
│  (avaliador)│ <────────────────────── │                 │
└─────────────┘        Respostas        └─────────────────┘
```

Se um humano não conseguir distinguir se está conversando com outro humano ou com uma máquina, a máquina passou no teste.

Este conceito é o ponto de partida de toda a discussão moderna sobre **Inteligência Artificial**.

---

## 4. Von Neumann e a Arquitetura dos Computadores Modernos

Enquanto Turing criava a teoria, o matemático **John von Neumann** (1903 — 1957) criou a arquitetura prática que todos os computadores modernos usam:

```
┌──────────────────────────────────────────────┐
│           COMPUTADOR VON NEUMANN             │
│                                              │
│  ┌──────────┐        ┌────────────────────┐  │
│  │  MEMÓRIA │◄──────►│        CPU         │  │
│  │          │        │  ┌──────────────┐  │  │
│  │ Programas│        │  │ Unidade de   │  │  │
│  │   Dados  │        │  │ Controle (UC)│  │  │
│  │          │        │  ├──────────────┤  │  │
│  └──────────┘        │  │ Unidade      │  │  │
│                      │  │ Aritmética e │  │  │
│  ┌──────────┐        │  │ Lógica (ULA) │  │  │
│  │  ENTRADA │──────► │  └──────────────┘  │  │
│  │ Teclado  │        └────────────────────┘  │
│  │  Mouse   │                  │             │
│  └──────────┘                  ▼             │
│                      ┌─────────────────┐     │
│                      │     SAÍDA       │     │
│                      │  Monitor        │     │
│                      │  Impressora     │     │
│                      └─────────────────┘     │
└──────────────────────────────────────────────┘
```

Essa arquitetura, proposta em 1945, é a base de praticamente todo computador que existe hoje.

---

## 5. A Linha do Tempo da Lógica e da Computação

```
470 a.C.  Sócrates — Método Socrático
384 a.C.  Aristóteles — Silogismo e Lógica Formal
1854      George Boole — Álgebra Booleana (0 e 1)
1936      Alan Turing — Máquina de Turing
1939-45   Bletchley Park — Deciframento da Enigma
1945      John von Neumann — Arquitetura dos computadores
1950      Turing — Teste de Turing / Inteligência Artificial
1954      Morte de Alan Turing
1970s     Primeiras linguagens de alto nível (C, Pascal...)
1990s     Internet popularizada
2000s     Linguagens modernas (Python, Java, C#...)
Hoje      IA, Machine Learning, Computação Quântica...
```

---

## 6. Curiosidades

### O Prêmio de Turing

O **Prêmio Turing**, concedido anualmente pela ACM (Association for Computing Machinery), é considerado o "Nobel da Computação". Os vencedores recebem 1 milhão de dólares, patrocinados pela Google.

### O Símbolo da Apple

Há uma lenda urbana de que a maçã com uma mordida no logo da Apple é uma homenagem a Alan Turing, que teria morrido mordendo uma maçã envenenada com cianeto. A Apple nega a relação, mas a coincidência é fascinante.

### Boole não sabia o que havia criado

George Boole morreu em 1864 sem imaginar que sua álgebra seria a base dos circuitos eletrônicos. Foi o engenheiro Claude Shannon, em 1937, quem percebeu que a lógica booleana podia ser implementada com circuitos elétricos (ligado = 1, desligado = 0).

### O primeiro "bug" da história

Em 1947, a programadora **Grace Hopper** encontrou uma mariposa (moth) presa nos relés do computador Mark II, causando um mau funcionamento. Ela colou o inseto no diário de bordo e escreveu: *"First actual case of bug being found"*. Daí surgiu o termo **bug** (inseto) para erros de programação.

---

## 7. Resumo

| Conceito | Quem | Quando | Contribuição |
|----------|------|--------|--------------|
| Silogismo | Aristóteles | 384 a.C. | Base do raciocínio lógico |
| Álgebra Booleana | George Boole | 1854 | Matemática do 0 e 1 |
| Máquina de Turing | Alan Turing | 1936 | Teoria da computabilidade |
| Arquitetura de Computadores | Von Neumann | 1945 | Base dos computadores atuais |
| Inteligência Artificial | Alan Turing | 1950 | Conceito de IA e Teste de Turing |

---

*[Voltar ao início](../../README.md)*
