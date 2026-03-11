programa {
  funcao inicio() {
    real n1, n2, resultado
    caracter operacao

    escreva("Digite o primeiro número: ")
    leia(n1)
    escreva("Digite o segundo número: ")
    leia(n2)
    escreva("Digite a operação (+, -, *, /): ")
    leia(operacao)

    escolha (operacao) {
      caso '+':
        resultado = n1 + n2
        escreva("Resultado: ", resultado)
        pare
      caso '-':
        resultado = n1 - n2
        escreva("Resultado: ", resultado)
        pare
      caso '*':
        resultado = n1 * n2
        escreva("Resultado: ", resultado)
        pare
      caso '/':
        se (n2 != 0) {
          resultado = n1 / n2
          escreva("Resultado: ", resultado)
        } senao {
          escreva("Erro: Divisão por zero!")
        }
        pare
      caso contrario:
        escreva("Operação inválida!")
    }
  }
}
