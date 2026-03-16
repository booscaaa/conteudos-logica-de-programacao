programa {
    funcao inicio() {
        // Exemplo 3: senao se — verificando múltiplas condições em sequência

        real nota

        escreva("Digite a nota do aluno (0 a 10): ")
        leia(nota)

        // O programa verifica de cima para baixo.
        // Para na PRIMEIRA condição verdadeira e executa apenas aquele bloco.
        se (nota >= 9.0) {
            escreval("Conceito: A — Excelente!")
        } senao se (nota >= 7.0) {
            escreval("Conceito: B — Bom!")
        } senao se (nota >= 5.0) {
            escreval("Conceito: C — Regular")
        } senao {
            escreval("Conceito: D — Reprovado")
        }

        // Outro exemplo: classificando a idade
        inteiro idade

        escreval("")
        escreva("Digite a idade: ")
        leia(idade)

        se (idade < 0) {
            escreval("Idade inválida!")
        } senao se (idade <= 12) {
            escreval("Classificação: Criança")
        } senao se (idade <= 17) {
            escreval("Classificação: Adolescente")
        } senao se (idade <= 59) {
            escreval("Classificação: Adulto")
        } senao {
            escreval("Classificação: Idoso")
        }
    }
}
