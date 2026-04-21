programa {
    funcao inicio() {
        // Exemplo 4: combinando funções — cada uma resolve uma parte do problema

        cadeia nome
        real n1, n2, n3

        escreva("=== SISTEMA DE NOTAS ===")
        escreva("")
        escreva("Nome do aluno: ")
        leia(nome)
        escreva("Nota 1: ")
        leia(n1)
        escreva("Nota 2: ")
        leia(n2)
        escreva("Nota 3: ")
        leia(n3)

        escreva("")
        exibirBoletim(nome, n1, n2, n3)
    }

    funcao real calcularMedia(real a, real b, real c) {
        retorne (a + b + c) / 3.0
    }

    funcao cadeia classificar(real media) {
        se (media >= 7.0) {
            retorne "Aprovado"
        } senao se (media >= 5.0) {
            retorne "Recuperacao"
        } senao {
            retorne "Reprovado"
        }
    }

    funcao exibirBoletim(cadeia nome, real n1, real n2, real n3) {
        real media = calcularMedia(n1, n2, n3)
        cadeia situacao = classificar(media)

        escreva("==============================")
        escreva("Aluno    : ", nome)
        escreva("Nota 1   : ", n1)
        escreva("Nota 2   : ", n2)
        escreva("Nota 3   : ", n3)
        escreva("Média    : ", media)
        escreva("Situação : ", situacao)
        escreva("==============================")
    }
}
