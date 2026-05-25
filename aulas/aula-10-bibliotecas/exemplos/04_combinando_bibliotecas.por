inclua biblioteca Matematica --> mat
inclua biblioteca Texto --> txt
inclua biblioteca Tipos --> tip
inclua biblioteca Util --> util

programa {
    funcao inicio() {
        // Combinando múltiplas bibliotecas em um programa

        // 1. Sorteia uma nota de 0 a 10
        inteiro nota_inteira = util.sorteia(0, 10)
        real nota = tip.real(nota_inteira)
        escreva("Nota sorteada: ", nota)

        // 2. Calcula a raiz da nota (exemplo matemático)
        real raiz_nota = mat.raiz(nota)
        real raiz_arredondada = mat.arredondar(raiz_nota, 2)
        escreva("Raiz da nota: ", raiz_arredondada)

        // 3. Classifica o aluno e exibe em maiúsculo
        cadeia classificacao = ""
        se (nota >= 6.0) {
            classificacao = txt.maiusculo("aprovado")
        } senao se (nota >= 4.0) {
            classificacao = txt.maiusculo("recuperacao")
        } senao {
            classificacao = txt.maiusculo("reprovado")
        }

        cadeia mensagem = txt.concatenar("Situação: ", classificacao)
        escreva(mensagem)

        // 4. Exibe o tamanho da mensagem
        inteiro tamanho = txt.tamanho(mensagem)
        escreva("Caracteres na mensagem: ", tamanho)
    }
}
