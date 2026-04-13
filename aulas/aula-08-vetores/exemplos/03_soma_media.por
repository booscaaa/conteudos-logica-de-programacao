programa {
    funcao inicio() {
        // Exemplo 3: calcular soma e média de um vetor de notas

        real notas[6]
        real soma = 0.0

        escreval("=== Notas da Turma ===")
        para (inteiro i = 0; i < 6; i++) {
            escreva("Nota do aluno ", i + 1, ": ")
            leia(notas[i])
            soma = soma + notas[i]
        }

        real media = soma / 6.0

        escreval("")
        escreval("Soma das notas: ", soma)
        escreval("Média da turma: ", media)

        // -------------------------------------------------------
        // Exibir quem está acima e abaixo da média
        // -------------------------------------------------------
        escreval("")
        escreval("=== Situação dos alunos ===")
        para (inteiro i = 0; i < 6; i++) {
            escreva("Aluno ", i + 1, " (nota ", notas[i], "): ")
            se (notas[i] >= media) {
                escreval("acima ou igual à média")
            } senao {
                escreval("abaixo da média")
            }
        }
    }
}
