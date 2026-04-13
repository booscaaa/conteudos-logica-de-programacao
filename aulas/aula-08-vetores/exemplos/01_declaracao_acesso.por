programa {
    funcao inicio() {
        // Exemplo 1: declarar um vetor e acessar posições individualmente

        inteiro notas[5]       // vetor com 5 posições: índices 0 a 4

        // Atribuindo valores diretamente em cada posição
        notas[0] = 8
        notas[1] = 6
        notas[2] = 9
        notas[3] = 5
        notas[4] = 7

        // Lendo e exibindo cada posição
        escreval("Nota do aluno 1: ", notas[0])
        escreval("Nota do aluno 2: ", notas[1])
        escreval("Nota do aluno 3: ", notas[2])
        escreval("Nota do aluno 4: ", notas[3])
        escreval("Nota do aluno 5: ", notas[4])

        // -------------------------------------------------------
        // Também é possível inicializar na declaração:
        // -------------------------------------------------------
        inteiro pares[] = {2, 4, 6, 8, 10}

        escreval("")
        escreval("Números pares:")
        escreval(pares[0])
        escreval(pares[1])
        escreval(pares[2])
        escreval(pares[3])
        escreval(pares[4])
    }
}
