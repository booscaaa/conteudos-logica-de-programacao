programa {
    funcao inicio() {
        // Exemplo 3: sentinela — somar números até o usuário digitar 0
        // O "0" é o sinal de parada: não entra na soma.

        inteiro numero = -1
        inteiro soma = 0
        inteiro quantidade = 0

        escreval("=== Somador de números ===")
        escreval("Digite números inteiros. Digite 0 para encerrar.")
        escreval("")

        enquanto (numero != 0) {
            escreva("Digite um número: ")
            leia(numero)

            se (numero != 0) {
                soma = soma + numero
                quantidade = quantidade + 1
            }
        }

        escreval("")
        escreval("--- Resultado ---")
        escreval("Números digitados : ", quantidade)
        escreval("Soma total        : ", soma)

        se (quantidade > 0) {
            real media = soma / quantidade
            escreval("Média             : ", media)
        }
    }
}
