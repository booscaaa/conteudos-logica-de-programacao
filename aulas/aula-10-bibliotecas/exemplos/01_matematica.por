inclua biblioteca Matematica --> mat

programa {
    funcao inicio() {
        // Biblioteca Matematica: funções matemáticas prontas

        real raiz = mat.raiz(25.0)
        escreva("Raiz de 25: ", raiz)          // 5.0

        real pot = mat.potencia(2.0, 10.0)
        escreva("2 elevado a 10: ", pot)        // 1024.0

        inteiro modulo = mat.abs(-42)
        escreva("Valor absoluto de -42: ", modulo) // 42

        real arredondado = mat.arredondar(3.7654, 2)
        escreva("3.7654 com 2 casas: ", arredondado) // 3.77

        inteiro teto = mat.teto(4.1)
        escreva("Teto de 4.1: ", teto)          // 5

        inteiro chao = mat.chao(4.9)
        escreva("Chão de 4.9: ", chao)          // 4
    }
}
