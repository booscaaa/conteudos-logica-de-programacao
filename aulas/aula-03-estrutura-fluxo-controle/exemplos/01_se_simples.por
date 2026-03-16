programa {
    funcao inicio() {
        // Exemplo 1: se simples — executa apenas se a condição for verdadeira

        inteiro idade

        escreva("Digite sua idade: ")
        leia(idade)

        se (idade >= 18) {
            escreval("Você é maior de idade.")
            escreval("Pode votar nas eleições.")
        }

        // Esta linha sempre executa, independente da condição acima
        escreval("Fim do programa.")
    }
}
