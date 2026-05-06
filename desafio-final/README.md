# Trabalho Final — Sinal Perdido

> **PLÁGIO E USO DE IA — NOTA ZERO**
> Copiar código de colega ou gerado por **inteligência artificial** resulta em **nota zero**. Quem copiou e quem forneceu o código são penalizados igualmente.

---

## O Desafio

Você vai criar um **jogo completo em Portugol Studio** inspirado no universo de Watch Dogs — um thriller de sobrevivência digital onde o jogador assume o papel de um hacker solitário tentando salvar o país de um colapso tecnológico total.

O jogo roda inteiramente no console, em modo texto. Não há gráficos — a imersão vem da narrativa, das escolhas do jogador e da tensão gerada pela bateria que nunca para de cair. Cada decisão importa: viajar drena energia, hackear custa recurso, e você nunca sabe o que vai encontrar na próxima cidade.

O objetivo é criar uma experiência que seja ao mesmo tempo **um jogo jogável e uma vitrine de tudo que você aprendeu no semestre**: variáveis, condicionais, laços, vetores e funções — tudo integrado em um programa real, com começo, meio e fim.

---

## Enredo

> _14 de março de 2027. 03h42._
>
> _A tela do seu notebook pisca três vezes e congela. Você tenta recarregar a página — sem resposta. Tenta outro site — nada. O roteador está ligado, mas não há sinal. Você abre a janela: as luzes do prédio em frente estão acesas, mas os semáforos da rua estão apagados. O celular do vizinho toca sem parar no corredor._
>
> _A internet caiu. Não só a sua — a do país inteiro. Do mundo._

Você é **ZERO_1**, um hacker underground conhecido nos fóruns clandestinos da deep web. Seu equipamento é modesto: um notebook de 2009 com um sistema operacional personalizado que ainda consegue pingar fragmentos da rede através de protocolos antigos que ninguém mais usa. É feio, lento e instável — mas funciona.

Enquanto governos entram em colapso e cidades perdem comunicação, você descobre que os servidores regionais do país ainda estão de pé — apenas desconectados entre si por um vírus sofisticado chamado **BLACKOUT**. Alguém o plantou deliberadamente. Alguém que conhece a infraestrutura melhor do que qualquer governo.

Sua missão tem três camadas:

1. **Sobreviver** — gerenciar a bateria do notebook enquanto viaja entre cidades e tenta hackear servidores protegidos
2. **Reconectar** — restaurar os servidores offline um a um, reconstruindo a rede fragmentada
3. **Investigar** — coletar pistas espalhadas pelo mapa, conversar com sobreviventes e descobrir a identidade de quem está por trás do BLACKOUT antes que o servidor corrompido apague tudo permanentemente

Cada cidade é um nó da rede — e cada nó esconde um segredo. Alguns estão apenas offline. Outros foram corrompidos pelo vírus e resistirão com força total. Um deles é o servidor do próprio atacante, protegido por um puzzle impossível. Chegar lá sem bateria suficiente significa fim de jogo.

O tema central de **hacking, sobrevivência e investigação** é fixo — não pode ser alterado.

---

## O Que Precisa Estar no Jogo

### Requisitos Obrigatórios

Cada item abaixo é avaliado. Itens faltando zerarão os pontos correspondentes.

#### 1. Mapa em Vetor (obrigatório)

- Vetor de cidades/servidores representando o mapa
- O jogador navega entre as cidades por índice ou direção
- Cada cidade tem um estado visível (offline, online, corrompido, etc.)
- Validar limites — não pode acessar posição fora do vetor

#### 2. Sistema de Recursos (obrigatório)

- Pelo menos **um recurso gerenciável** (ex.: bateria do notebook)
- Ações custam esse recurso
- O jogo termina se o recurso zerar (condição de derrota)
- Alguma forma de recuperar o recurso (item, NPC, descanso, etc.)

#### 3. Mini-puzzle (obrigatório — mínimo 2 tipos)

- Pelo menos **2 tipos diferentes** de puzzle no jogo
- Sugestões: adivinhar código estilo Wordle, sequência lógica, jogo da memória de números, cifra simples, sequência de Fibonacci, operação matemática com variável oculta, etc.
- Cada puzzle deve dar feedback claro ao jogador a cada tentativa

#### 4. Inventário com Vetor (obrigatório)

- Vetor de itens coletáveis com no mínimo **6 slots**
- Pelo menos **3 tipos diferentes de item** com efeitos distintos no jogo
- Exibir o inventário ao jogador quando solicitado

#### 5. Eventos Aleatórios por Cidade (obrigatório — mínimo 4 tipos)

Ao chegar em uma cidade, um evento aleatório deve ser sorteado. O jogador não sabe o que vai encontrar antes de entrar — isso cria tensão e imprevisibilidade. Cada evento deve ter mecânica própria e consequências reais (perda ou ganho de bateria, item, pista, dano, etc.).

Os quatro tipos obrigatórios são:

**Mini-puzzle** — o servidor da cidade está protegido por um desafio lógico. O jogador precisa resolver para avançar ou perde bateria na tentativa. Exemplos: sequência numérica (adivinhar o próximo número de uma série), cifra de César (decodificar uma palavra deslocada), jogo da memória de códigos (repetir uma sequência sorteada), ou operação matemática com variáveis ocultas.

**Batalha com segurança** — um guarda/agente bloqueia o acesso ao servidor. O combate é por texto: o jogo sorteia a força do inimigo, o jogador escolhe entre atacar, fugir ou usar item, e o resultado é calculado com lógica condicional e aleatoriedade. Vencer libera o servidor; perder custa bateria ou item do inventário.

**Cidade tóxica** — a cidade foi contaminada (campo eletromagnético, vírus no ar, radiação de roteadores queimados). Apenas atravessar a cidade já drena bateria continuamente. O jogador pode tentar hackear mesmo assim (com custo maior) ou seguir em frente sem reconectar o servidor. Não há como "lutar" — a única escolha é quanto risco aceitar.

**NPC com diálogo ramificado** — um sobrevivente aborda o jogador. A conversa tem pelo menos 2 opções de resposta com consequências diferentes. Exemplos: idosa que oferece descanso, programador com pista do chefe, militar que confisca item, criança com código rabiscado num papel.

> Além dos quatro obrigatórios, você pode criar tipos extras (evento de comércio, armadilha, servidor fantasma, transmissão misteriosa, etc.) para ganhar pontos de criatividade.

#### 6. Condição de Vitória e de Derrota (obrigatório)

- Pelo menos **1 condição de vitória** clara (ex.: todos os servidores online)
- Pelo menos **2 condições de derrota** diferentes (ex.: bateria zerada, tentativas esgotadas)
- Telas distintas para cada final com estatísticas da partida

#### 7. Funções Próprias (obrigatório — mínimo 8)

- Pelo menos **8 funções** no total
- Mix obrigatório: pelo menos 2 sem retorno, pelo menos 2 com retorno, pelo menos 2 com parâmetros
- Nenhuma função deve ter mais de 40 linhas — divida se necessário

---

## Conceitos das Aulas Utilizados

O jogo deve demonstrar **todos** os conceitos vistos no semestre:

- **Aula 02 — Variáveis e Tipos:** cadeia, inteiro, real, logico com nomes significativos
- **Aula 03 — Condicionais:** se / senao / senao se com lógica correta
- **Aula 04 — Álgebra Booleana:** operadores `e`, `ou`, `nao` nas validações
- **Aula 05 — Escolha/Caso:** menus e decisões com escolha/caso
- **Aula 06 — Laço para:** percorrer vetores, matrizes e sequências fixas
- **Aula 07 — Laço enquanto:** loop principal, validação de entrada, contagens
- **Aula 08 — Vetores:** inventário (vetor) e mapa (vetor)
- **Aula 09 — Funções:** modularização completa do jogo

---

## Critérios de Avaliação

| Critério                                                  | Pontos      |
| --------------------------------------------------------- | ----------- |
| Mapa em vetor com navegação e validação de limites        | 10 pts      |
| Sistema de recursos (bateria ou equivalente) funcional    | 10 pts      |
| Evento: mini-puzzle (mínimo 2 tipos)                      | 10 pts      |
| Evento: batalha com segurança (lógica de combate)         | 10 pts      |
| Evento: cidade tóxica (dreno contínuo + escolha de risco) | 10 pts      |
| Evento: NPC com diálogo ramificado e consequências        | 10 pts      |
| Inventário com vetor e itens com efeito                   | 10 pts      |
| Condições de vitória e derrota com telas distintas        | 5 pts       |
| Funções próprias (mín. 8, com mix de tipos)               | 10 pts      |
| Qualidade do código (nomes, indentação, organização)      | 10 pts      |
| Narrativa e criatividade                                  | 5 pts       |
| **Total**                                                 | **100 pts** |

---

## Bônus

| Bônus                                                                                   | Pts |
| --------------------------------------------------------------------------------------- | --- |
| 3 ou mais tipos diferentes de mini-puzzle                                               | +10 |
| Múltiplos finais (mínimo 3 finais diferentes conforme escolhas)                         | +8  |
| Sistema de ranking ou recorde salvo com vetores                                         | +5  |
| Expansão do enredo com reviravoltas e pistas coletáveis                                 | +5  |
| Chefe final com puzzle especial mais difícil                                            | +4  |
| **[AVANÇADO]** Mapa em matriz (conteúdo não visto em aula — pesquisa por conta própria) | +8  |

> Pontos bônus podem ultrapassar 100, mas a nota máxima registrada é 100.

---

## Avaliação Parcial — 27/05/2026

No dia **27 de maio de 2026** haverá uma **avaliação parcial em aula** que contará na nota final do trabalho.

Nessa data o jogo não precisa estar completo, mas precisa estar funcionando o suficiente para demonstrar progresso real. Será avaliado o que já está implementado até aquele momento — quanto mais requisitos funcionando, maior a pontuação parcial.

O professor poderá fazer perguntas sobre qualquer parte do código presente na tela: o que essa variável faz, por que usou esse laço, como essa função retorna o valor. Não saber responder pode indicar que o código não é seu.

Venha com o Portugol Studio aberto e o arquivo pronto para rodar.

---

## Instruções de Entrega

1. Nomeie o arquivo: `sinal-perdido-SEU_NOME.por`
   - Exemplo: `sinal-perdido-joao-silva.por`

2. No início do arquivo, preencha o cabeçalho obrigatório:

```portugol
/*
 * ================================================================
 *  SINAL PERDIDO — Trabalho Final
 * ================================================================
 *  Aluno: ______________________________
 *  Turma: ______________________________
 *  Data de entrega: 08/07/2026
 *
 *  Funcionalidades implementadas:
 *  - [descreva o que você fez]
 *  - [liste cada requisito atendido]
 *
 *  Bônus implementados (se houver):
 *  - [liste os bônus]
 * ================================================================
 */
```

3. O arquivo deve **rodar sem erros** no Portugol Studio antes de entregar.

4. Entregue pelo **Google Classroom** da turma até a data limite.

---

## Como Começar

1. Leia este documento inteiro antes de escrever qualquer código
2. Esboce no papel: quais cidades existem, quais eventos cada uma pode ter, como a narrativa avança
3. Comece pela estrutura básica: menu, mapa, movimento — o jogo precisa rodar antes de ter conteúdo
4. Adicione um evento por vez e teste cada um antes de passar para o próximo
5. Teste a cada pequena adição — não espere ter tudo pronto para rodar pela primeira vez

---

## Dicas Importantes

- **Salve frequentemente.** Portugol Studio não tem auto-save.
- **Nomeie bem suas variáveis.** `bateria`, `qtdItens`, `posLinha` são bons nomes. `x`, `n`, `temp` são ruins.
- **Uma função, uma responsabilidade.** Se a função está fazendo 3 coisas diferentes, divida em 3 funções.
- **Valide toda entrada do jogador.** Se o jogador digitar uma letra onde espera número, o programa não pode travar.
- **Teste o caso de derrota.** Muita gente só testa o caminho feliz — teste quando a bateria zera, quando o inventário está cheio, quando o puzzle falha.
- **Quanto mais você personalizar e expandir a narrativa, mais pontos de criatividade você ganha.**

---

## Perguntas Frequentes

**Posso mudar o tema do enredo?**
Não. O tema de hacking, apagão digital e reconexão de servidores é fixo.

**Posso trabalhar em dupla?**
Não. O trabalho é individual.

**O jogo precisa ter som ou interface gráfica?**
Não. Tudo é feito no console do Portugol Studio.

**E se eu não conseguir implementar algum requisito?**
Entregue o que tiver funcionando. Não entregue código quebrado que impede o jogo de rodar — comente a parte problemática com `//` e deixe uma nota no cabeçalho.

**Posso usar código da internet?**
Não. O objetivo é que **você** aplique os conceitos aprendidos. Usar código copiado sem entender zera a avaliação de qualidade e funções.

**O que acontece em caso de plágio?**
Ambos serão zerados — quem copiou e quem forneceu o código. Compartilhar seu código com outro aluno tem a mesma consequência de copiar.

**O que são os bônus avançados?**
Matriz e algoritmos de busca são conteúdos que **não foram vistos em aula**. Para ganhar esses pontos, você vai precisar pesquisar por conta própria como funcionam e aplicar no jogo. Uma matriz é um vetor de vetores — representa o mapa em linhas e colunas em vez de uma lista linear. Não é obrigatório, mas demonstra iniciativa e capacidade de aprender além do conteúdo da disciplina.

---

_Boa sorte! Lembre: o melhor jogo não é o maior — é o que funciona, tem código limpo e demonstra que você entendeu os conceitos._
