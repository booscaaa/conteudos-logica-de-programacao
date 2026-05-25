inclua biblioteca Texto --> txt

programa {
    funcao inicio() {
        // Biblioteca Texto: manipulação de cadeias de caracteres

        cadeia nome = "joao silva"

        cadeia maiusculo = txt.maiusculo(nome)
        escreva("Maiúsculo: ", maiusculo)       // JOAO SILVA

        cadeia minusculo = txt.minusculo("MARIA")
        escreva("Minúsculo: ", minusculo)       // maria

        inteiro tamanho = txt.tamanho(nome)
        escreva("Tamanho: ", tamanho)           // 10

        cadeia primeiros = txt.subCadeia(nome, 0, 3)
        escreva("Primeiros 4 chars: ", primeiros) // joao

        cadeia substituido = txt.substituir(nome, "joao", "pedro")
        escreva("Substituído: ", substituido)   // pedro silva

        inteiro posicao = txt.posicao(nome, "silva")
        escreva("Posição de 'silva': ", posicao) // 5
    }
}
