programa {
    funcao inicio() {
        // Exemplo 2: se e senao — sempre executa um dos dois blocos

        inteiro numero

        escreva("Digite um número inteiro: ")
        leia(numero)

        // Verificando se é par ou ímpar
        // O operador % retorna o RESTO da divisão
        // Se o resto de dividir por 2 for 0, o número é par
        se (numero % 2 == 0) {
            escreval(numero, " é um número PAR")
        } senao {
            escreval(numero, " é um número ÍMPAR")
        }

        // Outro exemplo: verificando nota
        real nota

        escreval("")
        escreva("Digite sua nota (0 a 10): ")
        leia(nota)

        se (nota >= 5.0) {
            escreval("Situação: APROVADO!")
        } senao {
            escreval("Situação: REPROVADO.")
        }
    }
}
