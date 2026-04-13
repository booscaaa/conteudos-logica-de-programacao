programa {
    funcao inicio() {
        // Exemplo 4: encontrar o maior e o menor valor em um vetor

        inteiro valores[5]
        inteiro maior
        inteiro menor
        inteiro posicaoMaior = 0
        inteiro posicaoMenor = 0

        escreval("=== Digite 5 números ===")
        para (inteiro i = 0; i < 5; i++) {
            escreva("Número ", i + 1, ": ")
            leia(valores[i])
        }

        // Inicializa maior e menor com o primeiro elemento
        maior = valores[0]
        menor = valores[0]

        // Percorre a partir do índice 1 comparando com maior/menor
        para (inteiro i = 1; i < 5; i++) {
            se (valores[i] > maior) {
                maior = valores[i]
                posicaoMaior = i
            }
            se (valores[i] < menor) {
                menor = valores[i]
                posicaoMenor = i
            }
        }

        escreval("")
        escreval("Maior valor: ", maior, " (posição ", posicaoMaior, ")")
        escreval("Menor valor: ", menor, " (posição ", posicaoMenor, ")")
    }
}
