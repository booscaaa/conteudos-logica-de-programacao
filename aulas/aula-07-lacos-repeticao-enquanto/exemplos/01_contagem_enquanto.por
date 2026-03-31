programa {
    funcao inicio() {
        // Exemplo 1: contar de 1 até N com o laço enquanto
        // Diferente do "para", declaramos e atualizamos i manualmente.

        inteiro n
        inteiro i = 1

        escreva("Digite o número limite: ")
        leia(n)

        escreval("Contando de 1 até ", n, ":")

        enquanto (i <= n) {
            escreval(i)
            i = i + 1
        }

        escreval("Fim da contagem!")
    }
}
