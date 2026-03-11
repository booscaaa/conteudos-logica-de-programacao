programa {
  funcao inicio() {
    inteiro opcao

    escreva("=== MENU DE OPÇÕES ===\n")
    escreva("1. Ver Saldo\n")
    escreva("2. Depositar\n")
    escreva("3. Sacar\n")
    escreva("4. Sair\n")
    escreva("Escolha uma opção: ")
    leia(opcao)

    escolha (opcao) {
      caso 1:
        escreva("Seu saldo atual é R$ 1.500,00")
        pare
      caso 2:
        escreva("Aguardando inserção de notas...")
        pare
      caso 3:
        escreva("Retirando dinheiro... Aguarde.")
        pare
      caso 4:
        escreva("Obrigado por utilizar nosso banco!")
        pare
      caso contrario:
        escreva("Opção inválida! Tente novamente.")
    }
  }
}
