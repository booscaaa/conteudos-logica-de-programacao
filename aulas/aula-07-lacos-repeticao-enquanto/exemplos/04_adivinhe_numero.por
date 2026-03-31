programa {
    funcao inicio() {
        // Exemplo 4: jogo "Adivinhe o número" com enquanto
        // Demonstra: condição dinâmica + contador de tentativas + se/senao se

        inteiro secreto = 42
        inteiro chute = 0
        inteiro tentativas = 0

        escreval("=== Jogo: Adivinhe o Número ===")
        escreval("O número está entre 1 e 100. Boa sorte!")
        escreval("")

        enquanto (chute != secreto) {
            escreva("Seu chute: ")
            leia(chute)
            tentativas = tentativas + 1

            se (chute < secreto) {
                escreval("Muito baixo! Tente um número maior.")
            } senao se (chute > secreto) {
                escreval("Muito alto! Tente um número menor.")
            }
        }

        escreval("")
        escreval("Parabéns! Você acertou em ", tentativas, " tentativa(s).")

        se (tentativas == 1) {
            escreval("Incrível! Acertou de primeira!")
        } senao se (tentativas <= 5) {
            escreval("Muito bem! Ótima performance.")
        } senao {
            escreval("Continue praticando!")
        }
    }
}
