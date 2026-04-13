programa {
    funcao inicio() {
        // Exemplo 2: preencher um vetor com leia() e imprimir com para
        // Padrão mais comum: deixar o usuário digitar os valores.

        inteiro numeros[5]

        escreval("=== Preenchendo o vetor ===")
        para (inteiro i = 0; i < 5; i++) {
            escreva("Digite o ", i + 1, "° número: ")
            leia(numeros[i])
        }

        escreval("")
        escreval("=== Conteúdo do vetor ===")
        para (inteiro i = 0; i < 5; i++) {
            escreval("numeros[", i, "] = ", numeros[i])
        }

        // -------------------------------------------------------
        // Calculando a soma enquanto preenche
        // -------------------------------------------------------
        inteiro valores[4]
        inteiro soma = 0

        escreval("")
        escreval("=== Soma de 4 números ===")
        para (inteiro i = 0; i < 4; i++) {
            escreva("Digite o valor ", i + 1, ": ")
            leia(valores[i])
            soma = soma + valores[i]
        }

        escreval("Soma total: ", soma)
    }
}
