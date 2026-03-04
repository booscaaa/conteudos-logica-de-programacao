programa {
    funcao inicio() {
        // ─── Variáveis lógicas básicas ───────────────────────────────────────
        logico lampada     = verdadeiro
        logico motorLigado = falso
        logico portaAberta = verdadeiro
        logico contaAtiva  = falso

        escreva("=== Variáveis Lógicas ===\n")
        escreva("lampada:     ", lampada,     "\n")
        escreva("motorLigado: ", motorLigado, "\n")
        escreva("portaAberta: ", portaAberta, "\n")
        escreva("contaAtiva:  ", contaAtiva,  "\n\n")

        // ─── Variáveis lógicas como resultado de comparações ─────────────────
        inteiro nota  = 8
        inteiro idade = 15

        logico aprovado  = (nota >= 7)
        logico ehMaior   = (idade >= 18)
        logico menorIdade = (idade < 18)

        escreva("=== Variáveis como Resultado de Comparações ===\n")
        escreva("nota = ", nota, " → aprovado: ", aprovado, "\n")
        escreva("idade = ", idade, " → ehMaior: ", ehMaior, "\n")
        escreva("menorIdade: ", menorIdade, "\n\n")

        // ─── Usando variáveis lógicas em condicionais ─────────────────────────
        escreva("=== Uso em Condicionais ===\n")
        se (aprovado) {
            escreva("Situação: APROVADO (nota >= 7)\n")
        } senao {
            escreva("Situação: REPROVADO (nota < 7)\n")
        }

        se (menorIdade) {
            escreva("Classificação: MENOR DE IDADE\n")
        } senao {
            escreva("Classificação: MAIOR DE IDADE\n")
        }

        // ─── Lendo variável lógica do teclado ─────────────────────────────────
        escreva("\n=== Leitura de Variável Lógica ===\n")
        escreva("Você tem carteira de habilitação? (verdadeiro/falso): ")
        logico temCarteira
        leia(temCarteira)

        escreva("Valor lido: ", temCarteira, "\n")
        se (temCarteira) {
            escreva("Habilitado para dirigir.\n")
        } senao {
            escreva("Sem habilitação.\n")
        }
    }
}
