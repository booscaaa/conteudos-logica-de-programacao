/*
 * Estruturas de Fluxo de Controle
 * Exemplo 03: escolha/caso
 *
 * Demonstra a estrutura escolha/caso para comparar um valor com
 * multiplas opcoes fixas e especificas:
 *   - caso     → cada opcao possivel
 *   - pare     → encerra o escolha (como o "break" de outras linguagens)
 *   - contrario → caso padrao se nenhum caso combinar (como "default")
 *
 * Exemplos praticos:
 *   - Dia da semana
 *   - Menu de opcoes
 *   - Mes e estacao do ano
 *   - Calculadora com menu
 */

programa {
    funcao inicio() {
        // ─────────────────────────────────────────────
        // EXEMPLO 1: Dia da semana
        // Compara inteiro com valores fixos 1 a 7
        // ─────────────────────────────────────────────
        escreval("=== DIA DA SEMANA ===")

        inteiro dia
        escreva("Digite um numero de 1 a 7: ")
        leia(dia)

        escolha (dia) {
            caso 1:
                escreval("Segunda-feira")
                pare
            caso 2:
                escreval("Terca-feira")
                pare
            caso 3:
                escreval("Quarta-feira")
                pare
            caso 4:
                escreval("Quinta-feira")
                pare
            caso 5:
                escreval("Sexta-feira")
                pare
            caso 6:
                escreval("Sabado — fim de semana!")
                pare
            caso 7:
                escreval("Domingo — fim de semana!")
                pare
            contrario:
                escreval("Numero invalido! Informe um valor de 1 a 7.")
                pare
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Menu de opcoes (sistema de loja)
        // ─────────────────────────────────────────────
        escreval("╔══════════════════════════════════╗")
        escreval("║         LOJA VIRTUAL              ║")
        escreval("╠══════════════════════════════════╣")
        escreval("║  1 - Ver produtos                 ║")
        escreval("║  2 - Adicionar ao carrinho        ║")
        escreval("║  3 - Finalizar compra             ║")
        escreval("║  4 - Acompanhar pedido            ║")
        escreval("║  5 - Sair                         ║")
        escreval("╚══════════════════════════════════╝")

        inteiro opcao
        escreva("Escolha uma opcao: ")
        leia(opcao)
        escreval()

        escolha (opcao) {
            caso 1:
                escreval("Exibindo catalogo de produtos...")
                escreval("  - Camiseta   R$ 49.90")
                escreval("  - Calca      R$ 89.90")
                escreval("  - Tenis      R$ 199.90")
                pare
            caso 2:
                escreval("Produto adicionado ao carrinho!")
                pare
            caso 3:
                escreval("Processando pagamento...")
                escreval("Compra finalizada com sucesso!")
                pare
            caso 4:
                escreval("Seu pedido esta a caminho. Previsao: 3 dias uteis.")
                pare
            caso 5:
                escreval("Ate logo! Obrigado por visitar nossa loja.")
                pare
            contrario:
                escreval("Opcao invalida! Escolha um numero de 1 a 5.")
                pare
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Mes e estacao do ano
        // (hemisfério sul)
        // ─────────────────────────────────────────────
        escreval("=== MES E ESTACAO DO ANO ===")

        inteiro mes
        escreva("Digite o numero do mes (1 a 12): ")
        leia(mes)

        escreva("Mes: ")
        escolha (mes) {
            caso 1:
                escreval("Janeiro")
                escreval("Estacao: Verao")
                pare
            caso 2:
                escreval("Fevereiro")
                escreval("Estacao: Verao")
                pare
            caso 3:
                escreval("Marco")
                escreval("Estacao: Outono")
                pare
            caso 4:
                escreval("Abril")
                escreval("Estacao: Outono")
                pare
            caso 5:
                escreval("Maio")
                escreval("Estacao: Outono")
                pare
            caso 6:
                escreval("Junho")
                escreval("Estacao: Inverno")
                pare
            caso 7:
                escreval("Julho")
                escreval("Estacao: Inverno")
                pare
            caso 8:
                escreval("Agosto")
                escreval("Estacao: Inverno")
                pare
            caso 9:
                escreval("Setembro")
                escreval("Estacao: Primavera")
                pare
            caso 10:
                escreval("Outubro")
                escreval("Estacao: Primavera")
                pare
            caso 11:
                escreval("Novembro")
                escreval("Estacao: Primavera")
                pare
            caso 12:
                escreval("Dezembro")
                escreval("Estacao: Verao")
                pare
            contrario:
                escreval("Mes invalido!")
                pare
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Calculadora com menu
        // Combina escolha/caso com se/senao
        // ─────────────────────────────────────────────
        escreval("=== CALCULADORA ===")
        escreval("1 - Somar")
        escreval("2 - Subtrair")
        escreval("3 - Multiplicar")
        escreval("4 - Dividir")
        escreval()

        inteiro op
        real num1, num2

        escreva("Operacao: ")
        leia(op)

        escreva("Primeiro numero: ")
        leia(num1)

        escreva("Segundo numero: ")
        leia(num2)

        escreval()

        escolha (op) {
            caso 1:
                escreval(num1, " + ", num2, " = ", num1 + num2)
                pare
            caso 2:
                escreval(num1, " - ", num2, " = ", num1 - num2)
                pare
            caso 3:
                escreval(num1, " * ", num2, " = ", num1 * num2)
                pare
            caso 4:
                se (num2 == 0.0) {
                    escreval("Erro: divisao por zero nao e permitida!")
                } senao {
                    escreval(num1, " / ", num2, " = ", num1 / num2)
                }
                pare
            contrario:
                escreval("Operacao invalida! Escolha entre 1 e 4.")
                pare
        }
    }
}
