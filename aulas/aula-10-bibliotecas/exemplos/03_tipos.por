inclua biblioteca Tipos --> tip

programa {
    funcao inicio() {
        // Biblioteca Tipos: conversão entre tipos de dados

        // inteiro → real
        inteiro n = 7
        real r = tip.real(n)
        escreva("7 como real: ", r)             // 7.0

        // real → inteiro (trunca a parte decimal)
        real preco = 9.99
        inteiro preco_inteiro = tip.inteiro(preco)
        escreva("9.99 como inteiro: ", preco_inteiro) // 9

        // inteiro → cadeia
        inteiro idade = 20
        cadeia idade_texto = tip.cadeia(idade)
        escreva("20 como cadeia: ", idade_texto) // "20"

        // cadeia → inteiro
        cadeia entrada = "42"
        inteiro numero = tip.inteiro(entrada)
        escreva("\"42\" como inteiro: ", numero) // 42

        // cadeia → real
        cadeia nota_texto = "8.5"
        real nota = tip.real(nota_texto)
        escreva("\"8.5\" como real: ", nota)     // 8.5
    }
}
