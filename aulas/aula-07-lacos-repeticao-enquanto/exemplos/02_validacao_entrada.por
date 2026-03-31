programa {
    funcao inicio() {
        // Exemplo 2: validação de entrada com enquanto
        // O programa rejeita valores fora do intervalo e pede novamente.

        inteiro idade = -1   // valor inválido: garante a entrada no laço

        enquanto (idade < 0 ou idade > 120) {
            escreva("Digite sua idade (0 a 120): ")
            leia(idade)

            se (idade < 0 ou idade > 120) {
                escreval("Valor inválido! Tente novamente.")
            }
        }

        escreval("Idade registrada: ", idade)

        // -------------------------------------------------------
        // Segundo exemplo: validar nota entre 0.0 e 10.0
        // -------------------------------------------------------

        real nota = -1.0

        enquanto (nota < 0.0 ou nota > 10.0) {
            escreva("Digite a nota (0.0 a 10.0): ")
            leia(nota)

            se (nota < 0.0 ou nota > 10.0) {
                escreval("Nota fora do intervalo! Tente novamente.")
            }
        }

        escreval("Nota aceita: ", nota)
    }
}
