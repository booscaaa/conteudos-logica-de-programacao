programa {
    funcao inicio() {
        // Exemplo 2: tabuada de um número qualquer

        inteiro numero

        escreva("Digite o número para ver a tabuada: ")
        leia(numero)

        escreval("--- Tabuada do ", numero, " ---")

        para(inteiro i = 1; i <= 10; i++) {
            escreval(numero, " x ", i, " = ", numero * i)
        }
    }
}
