programa {
    funcao inicio() {
        // Exemplo 2: funções com parâmetros
        // Parâmetros tornam a função genérica e reutilizável

        saudar("João", 20)
        saudar("Maria", 17)
        saudar("Pedro", 25)

        escreva("")

        // Função que calcula e exibe o IMC
        calcularIMC("Ana", 65.0, 1.68)
        calcularIMC("Bruno", 90.0, 1.75)
    }

    funcao saudar(cadeia nome, inteiro idade) {
        escreva("Olá, ", nome, "!")
        se (idade >= 18) {
            escreva("Você é maior de idade.")
        } senao {
            escreva("Você ainda é menor de idade.")
        }
        escreva("")
    }

    funcao calcularIMC(cadeia nome, real peso, real altura) {
        real imc = peso / (altura * altura)
        escreva(nome, " → IMC: ", imc, " → ")
        se (imc < 18.5) {
            escreva("Abaixo do peso")
        } senao se (imc < 25.0) {
            escreva("Peso normal")
        } senao se (imc < 30.0) {
            escreva("Sobrepeso")
        } senao {
            escreva("Obesidade")
        }
    }
}
