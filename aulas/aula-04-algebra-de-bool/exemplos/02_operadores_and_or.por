programa {
    funcao inicio() {
        // ─── Operador AND (e) ─────────────────────────────────────────────────
        escreva("=== Operador AND (e) ===\n")
        escreva("Resultado é verdadeiro SOMENTE quando TODOS são verdadeiros.\n\n")

        logico a1 = verdadeiro
        logico b1 = verdadeiro
        escreva("verdadeiro e verdadeiro = ", a1 e b1, "\n")   // verdadeiro

        logico a2 = verdadeiro
        logico b2 = falso
        escreva("verdadeiro e falso      = ", a2 e b2, "\n")   // falso

        logico a3 = falso
        logico b3 = verdadeiro
        escreva("falso      e verdadeiro = ", a3 e b3, "\n")   // falso

        logico a4 = falso
        logico b4 = falso
        escreva("falso      e falso      = ", a4 e b4, "\n\n") // falso

        // ─── Exemplo AND real: pode dirigir? ──────────────────────────────────
        escreva("=== Exemplo: Pode Dirigir? ===\n")
        inteiro idadeMotorista
        logico temCarteira

        escreva("Informe sua idade: ")
        leia(idadeMotorista)
        escreva("Tem carteira de habilitação? (verdadeiro/falso): ")
        leia(temCarteira)

        logico podeDirigir = (idadeMotorista >= 18) e temCarteira
        se (podeDirigir) {
            escreva("Pode dirigir legalmente.\n\n")
        } senao {
            escreva("Não pode dirigir. Precisa ter 18+ anos E carteira.\n\n")
        }

        // ─── Operador OR (ou) ────────────────────────────────────────────────
        escreva("=== Operador OR (ou) ===\n")
        escreva("Resultado é verdadeiro quando PELO MENOS UM é verdadeiro.\n\n")

        escreva("verdadeiro ou verdadeiro = ", verdadeiro ou verdadeiro, "\n")  // V
        escreva("verdadeiro ou falso      = ", verdadeiro ou falso,      "\n")  // V
        escreva("falso      ou verdadeiro = ", falso ou verdadeiro,      "\n")  // V
        escreva("falso      ou falso      = ", falso ou falso,           "\n\n") // F

        // ─── Exemplo OR real: desconto por idade ──────────────────────────────
        escreva("=== Exemplo: Desconto por Idade ===\n")
        inteiro idadeCliente

        escreva("Informe a idade do cliente: ")
        leia(idadeCliente)

        logico temDesconto = (idadeCliente < 12) ou (idadeCliente > 60)
        se (temDesconto) {
            escreva("Cliente tem direito ao desconto especial!\n")
        } senao {
            escreva("Sem desconto por faixa etária.\n")
        }

        // ─── Combinando AND e OR ──────────────────────────────────────────────
        escreva("\n=== Combinando AND e OR ===\n")
        logico diaUtil = verdadeiro
        inteiro hora = 14

        logico estaAberto = diaUtil e (hora >= 8) e (hora <= 18)
        se (estaAberto) {
            escreva("Loja ABERTA ✓\n")
        } senao {
            escreva("Loja FECHADA ✗\n")
        }
    }
}
