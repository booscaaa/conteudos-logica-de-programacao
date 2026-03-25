programa {
    funcao inicio() {
        // Exemplo 3: acumulador — soma e média de notas

        inteiro quantidade
        real nota, soma, media

        soma = 0.0

        escreva("Quantos alunos? ")
        leia(quantidade)

        para(inteiro i = 1; i <= quantidade; i++) {
            escreva("Nota do aluno ", i, ": ")
            leia(nota)
            soma = soma + nota
        }

        media = soma / quantidade

        escreval("---")
        escreval("Soma total : ", soma)
        escreval("Média      : ", media)
    }
}
