# Introducao a Logica de Programacao

> "A logica e o inicio da sabedoria, nao o fim." — Leonard Nimoy (Mr. Spock, Star Trek)

---

## 1. O que e Logica?

**Logica** e a ciencia do raciocinio correto. E a disciplina que estuda as formas validas de pensar, argumentar e chegar a conclusoes verdadeiras a partir de premissas.

Na programacao, **logica e tudo**. Quando voce escreve um programa, voce esta descrevendo para o computador uma sequencia de passos logicos que ele deve seguir para resolver um problema.

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

Isso **e um algoritmo** — uma sequencia de passos ordenados para resolver um problema. E exatamente isso que voce fara ao programar!

---

## 2. Socrates e a Logica Classica

### Quem foi Socrates?

**Socrates** (470 a.C. — 399 a.C.) foi um filosofo grego considerado o pai da filosofia ocidental. Ele nao deixou nada escrito — tudo que sabemos dele vem dos relatos de seu discipulo **Platao**.

Socrates ficou famoso pelo **Metodo Socrático** (ou **Maieutica**): um processo de perguntas e respostas que leva o interlocutor a encontrar a verdade por si mesmo.

> "So sei que nada sei." — Socrates

### Aristoteles e a Logica Formal

O discipulo de Platao, **Aristoteles** (384 a.C. — 322 a.C.), foi quem sistematizou a logica como disciplina formal. Ele criou o conceito de **silogismo**.

#### O que e um Silogismo?

Um silogismo e um argumento com **duas premissas** que levam a uma **conclusao**:

```
Premissa 1:  Todo ser humano e mortal.
Premissa 2:  Socrates e um ser humano.
Conclusao:   Portanto, Socrates e mortal.
```

Isso pode parecer simples, mas e exatamente a estrutura logica que esta por tras das instrucoes `se/entao` (condicionais) em programacao:

```
SE (usuario tem mais de 18 anos)
   ENTAO (permita o acesso)
SENAO
   (bloqueie o acesso)
```

### A Logica Booleana — George Boole

Quase 2000 anos depois de Aristoteles, o matematico ingles **George Boole** (1815 — 1864) formalizou a logica em termos matematicos, criando o que chamamos de **Algebra Booleana**.

Boole propôs que qualquer proposicao logica poderia ser representada com apenas **dois valores**:

| Valor | Significado |
|-------|-------------|
| `1` (VERDADEIRO) | A proposicao e verdadeira |
| `0` (FALSO) | A proposicao e falsa |

Operadores logicos basicos:

| Operador | Simbolo | Descricao |
|----------|---------|-----------|
| E (AND) | `&&` | Verdadeiro somente se AMBOS forem verdadeiros |
| OU (OR) | `\|\|` | Verdadeiro se PELO MENOS UM for verdadeiro |
| NAO (NOT) | `!` | Inverte o valor |

Esse trabalho de Boole, publicado em 1854, seria o fundamento teorico de todos os computadores modernos — mas isso so seria percebido quase 100 anos depois.

---

## 3. Alan Turing e a Revolucao do Seculo XX

### Quem foi Alan Turing?

**Alan Mathison Turing** (1912 — 1954) foi um matematico, logico, cientista da computacao e criptoanalista britanico. E amplamente considerado o **pai da computacao moderna** e da inteligencia artificial.

Turing foi um genio que viveu uma vida tragica: perseguido pelo governo britanico por ser homossexual numa epoca em que isso era crime, ele foi quimicamente castrado e morreu aos 41 anos, em circunstancias ainda debatidas pelos historiadoros.

Em 2013, a Rainha Elizabeth II concedeu-lhe um perdao postumo. Em 2021, seu rosto passou a estampar a cedula de 50 libras no Reino Unido.

> Ironicamente, o homem que mais contribuiu para a criacao dos computadores foi destruido pelo proprio governo que usou seu genio para vencer a Segunda Guerra Mundial.

### A Maquina de Turing (1936)

Em 1936, com apenas 24 anos, Turing publicou o artigo *"On Computable Numbers"* onde descreveu um dispositivo abstrato chamado **Maquina de Turing**.

A maquina e conceitual (nao foi fisicamente construida por Turing), mas define o que um computador pode ou nao pode fazer.

#### Como funciona a Maquina de Turing?

```
┌─────────────────────────────────────────────┐
│            FITA INFINITA                     │
│  ...│ 0 │ 1 │ 1 │ 0 │ 1 │ 0 │ 0 │ 1 │...  │
│              ▲                               │
│         CABECA DE LEITURA/ESCRITA            │
└─────────────────────────────────────────────┘
                    │
         ┌──────────▼──────────┐
         │   UNIDADE DE        │
         │   CONTROLE          │
         │   (Estado atual)    │
         │   Tabela de regras  │
         └─────────────────────┘
```

A maquina possui:

1. **Fita infinita** — dividida em celulas, cada uma podendo conter um simbolo
2. **Cabeca de leitura/escrita** — le e escreve simbolos na fita, e se move para a esquerda ou direita
3. **Tabela de regras** — define o que fazer com base no estado atual e no simbolo lido
4. **Registrador de estado** — armazena o estado atual da maquina

#### O que isso tem a ver com programacao?

A Maquina de Turing demonstrou que qualquer problema que pode ser computado pode ser resolvido por uma maquina com essas 4 partes simples. Isso significa que:

- **Qualquer linguagem de programacao suficientemente poderosa** pode resolver os mesmos problemas
- Portugol, Python, Java, C, JavaScript — todas sao **Turing completas**
- Seu computador de hoje e, em essencia, uma Maquina de Turing extremamente rapida e sofisticada

### Quebrando a Enigma — Segunda Guerra Mundial

Durante a Segunda Guerra, Turing liderou a equipe britanica em **Bletchley Park** que decifrou a **Maquina Enigma** nazista — um dispositivo de criptografia que os alemaes consideravam inquebravel.

A decifracao da Enigma permitiu que os Aliados lessem as comunicacoes secretas nazistas, contribuindo decisivamente para o fim da guerra. Estima-se que esse trabalho **encurtou a guerra em 2 a 4 anos** e salvou entre **14 e 21 milhoes de vidas**.

O trabalho de Turing em Bletchley Park so foi desclassificado pelo governo britanico em 2009.

### O Teste de Turing (1950)

Em 1950, Turing publicou o artigo *"Computing Machinery and Intelligence"*, onde propôs a questao:

> **"Podem as maquinas pensar?"**

Para responder isso, ele criou o **Jogo da Imitacao** (depois chamado de **Teste de Turing**):

```
┌─────────────┐        Perguntas        ┌─────────────────┐
│   HUMANO    │ ──────────────────────> │  HUMANO ou IA?  │
│  (avaliador)│ <────────────────────── │                 │
└─────────────┘        Respostas        └─────────────────┘
```

Se um humano nao conseguir distinguir se esta conversando com outro humano ou com uma maquina, a maquina passou no teste.

Este conceito e o ponto de partida de toda a discussao moderna sobre **Inteligencia Artificial**.

---

## 4. Von Neumann e a Arquitetura dos Computadores Modernos

Enquanto Turing criava a teoria, o matematico **John von Neumann** (1903 — 1957) criou a arquitetura pratica que todos os computadores modernos usam:

```
┌──────────────────────────────────────────────┐
│           COMPUTADOR VON NEUMANN             │
│                                              │
│  ┌──────────┐        ┌────────────────────┐  │
│  │  MEMORIA │◄──────►│        CPU         │  │
│  │          │        │  ┌──────────────┐  │  │
│  │ Programas│        │  │ Unidade de   │  │  │
│  │   Dados  │        │  │ Controle (UC)│  │  │
│  │          │        │  ├──────────────┤  │  │
│  └──────────┘        │  │ Unidade      │  │  │
│                      │  │ Aritmetica e │  │  │
│  ┌──────────┐        │  │ Logica (ULA) │  │  │
│  │  ENTRADA │──────► │  └──────────────┘  │  │
│  │ Teclado  │        └────────────────────┘  │
│  │  Mouse   │                  │             │
│  └──────────┘                  ▼             │
│                      ┌─────────────────┐     │
│                      │     SAIDA       │     │
│                      │  Monitor        │     │
│                      │  Impressora     │     │
│                      └─────────────────┘     │
└──────────────────────────────────────────────┘
```

Essa arquitetura, proposta em 1945, e a base de praticamente todo computador que existe hoje.

---

## 5. A Linha do Tempo da Logica e da Computacao

```
470 a.C.  Socrates — Metodo Socrático
384 a.C.  Aristoteles — Silogismo e Logica Formal
1854      George Boole — Algebra Booleana (0 e 1)
1936      Alan Turing — Maquina de Turing
1939-45   Bletchley Park — Deciframento da Enigma
1945      John von Neumann — Arquitetura dos computadores
1950      Turing — Teste de Turing / Inteligencia Artificial
1954      Morte de Alan Turing
1970s     Primeiras linguagens de alto nivel (C, Pascal...)
1990s     Internet popularizada
2000s     Linguagens modernas (Python, Java, C#...)
Hoje      IA, Machine Learning, Computacao Quantica...
```

---

## 6. Curiosidades

### O Oscar de Turing

O **Premio Turing**, concedido anualmente pela ACM (Association for Computing Machinery), e considerado o "Nobel da Computacao". Os vencedores recebem 1 milhao de dolares, patrocinados pela Google.

### O Simbolo da Apple

Ha uma lenda urbana de que a maca com uma mordida no logo da Apple e uma homenagem a Alan Turing, que teria morrido mordendo uma maca envenenada com cianeto. A Apple nega a relacao, mas a coincidencia e fascinante.

### Boole nao sabia o que havia criado

George Boole morreu em 1864 sem imaginar que sua algebra seria a base dos circuitos eletronicos. Foi o engenheiro Claude Shannon, em 1937, quem percebeu que a logica booleana podia ser implementada com circuitos eletricos (ligado = 1, desligado = 0).

### O primeiro "bug" da historia

Em 1947, a programadora **Grace Hopper** encontrou uma mariposa (moth) presa nos reles do computador Mark II, causando um mau funcionamento. Ela colou o inseto no diario de bordo e escreveu: *"First actual case of bug being found"*. Dai surgiu o termo **bug** (inseto) para erros de programacao.

---

## 7. Resumo

| Conceito | Quem | Quando | Contribuicao |
|----------|------|--------|--------------|
| Silogismo | Aristoteles | 384 a.C. | Base do raciocinio logico |
| Algebra Booleana | George Boole | 1854 | Matematica do 0 e 1 |
| Maquina de Turing | Alan Turing | 1936 | Teoria da computabilidade |
| Arquitetura de Computadores | Von Neumann | 1945 | Base dos computadores atuais |
| Inteligencia Artificial | Alan Turing | 1950 | Conceito de IA e Teste de Turing |

---

*[Voltar ao inicio](../../README.md)*
