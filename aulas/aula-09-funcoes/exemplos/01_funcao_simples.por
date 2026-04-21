programa {
    funcao inicio() {
        // Exemplo 1: função sem parâmetros e sem retorno (procedimento)
        // Usada para evitar repetição de código

        exibirCabecalho()
        escreva("Nome: Ana")
        escreva("Curso: Sistemas de Informação")
        exibirSeparador()
        escreva("Nome: Bruno")
        escreva("Curso: Engenharia de Software")
        exibirSeparador()
        escreva("Nome: Carlos")
        escreva("Curso: Lógica de Programação")
        exibirRodape()
    }

    funcao exibirCabecalho() {
        escreva("==============================")
        escreva("    SISTEMA DE ALUNOS")
        escreva("==============================")
    }

    funcao exibirSeparador() {
        escreva("------------------------------")
    }

    funcao exibirRodape() {
        escreva("==============================")
        escreva("  Fim do relatório")
        escreva("==============================")
    }
}
