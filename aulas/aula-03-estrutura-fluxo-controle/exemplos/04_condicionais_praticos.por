programa {
    funcao inicio() {
        // Exemplo 4: exemplos práticos usando condicionais

        // ----- CALCULADORA DE IMC -----
        real peso, altura, imc

        escreval("=== Calculadora de IMC ===")
        escreva("Peso (kg): ")
        leia(peso)
        escreva("Altura (m): ")
        leia(altura)

        imc = peso / (altura * altura)

        escreval("Seu IMC: ", imc)

        se (imc < 18.5) {
            escreval("Classificação: Abaixo do peso")
        } senao se (imc < 25.0) {
            escreval("Classificação: Peso normal")
        } senao se (imc < 30.0) {
            escreval("Classificação: Sobrepeso")
        } senao {
            escreval("Classificação: Obesidade")
        }

        // ----- APROVAÇÃO COM NOTA E FALTAS -----
        real notaAluno
        inteiro faltas

        escreval("")
        escreval("=== Sistema de Aprovação ===")
        escreva("Nota do aluno (0 a 10): ")
        leia(notaAluno)
        escreva("Número de faltas: ")
        leia(faltas)

        // Combinando condições com "e"
        // O aluno precisa de nota >= 5 E faltas <= 15 para ser aprovado
        se (notaAluno >= 5.0 e faltas <= 15) {
            escreval("Resultado: APROVADO!")
        } senao se (notaAluno < 5.0 e faltas > 15) {
            escreval("Resultado: REPROVADO (nota e faltas insuficientes)")
        } senao se (notaAluno < 5.0) {
            escreval("Resultado: REPROVADO por nota")
        } senao {
            escreval("Resultado: REPROVADO por faltas")
        }
    }
}
