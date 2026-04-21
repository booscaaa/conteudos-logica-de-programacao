programa {
    funcao inicio() {
        // Exemplo 3: funções com retorno
        // O valor retornado pode ser armazenado ou usado diretamente

        // Usando retorno em variável
        inteiro maior = maximo(10, 7)
        escreva("Maior entre 10 e 7: ", maior)

        // Usando retorno diretamente na expressão
        escreva("Maior entre 3 e 15: ", maximo(3, 15))

        escreva("")

        // Função retornando real
        real media = calcularMedia(8.0, 6.5, 9.0)
        escreva("Média das notas: ", media)

        escreva("")

        // Função retornando logico
        inteiro numero
        escreva("Digite um número: ")
        leia(numero)

        se (ehPar(numero)) {
            escreva(numero, " é par.")
        } senao {
            escreva(numero, " é ímpar.")
        }
    }

    funcao inteiro maximo(inteiro a, inteiro b) {
        se (a > b) {
            retorne a
        } senao {
            retorne b
        }
    }

    funcao real calcularMedia(real n1, real n2, real n3) {
        retorne (n1 + n2 + n3) / 3.0
    }

    funcao logico ehPar(inteiro n) {
        retorne (n % 2 == 0)
    }
}
