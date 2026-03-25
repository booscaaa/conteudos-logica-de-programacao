programa {
    funcao inicio() {
        // Exemplo 4: variações de passo — pares, ímpares e regressiva

        escreval("=== Números pares de 0 a 20 ===")
        para(inteiro i = 0; i <= 20; i += 2) {
            escreva(i, "  ")
        }
        escreval("")

        escreval("=== Números ímpares de 1 a 19 ===")
        para(inteiro i = 1; i <= 19; i += 2) {
            escreva(i, "  ")
        }
        escreval("")

        escreval("=== Contagem regressiva de 10 a 1 ===")
        para(inteiro i = 10; i >= 1; i--) {
            escreva(i, "  ")
        }
        escreval("")
        escreval("Lançamento!")
    }
}
