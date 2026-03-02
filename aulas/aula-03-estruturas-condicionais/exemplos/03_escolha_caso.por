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
        escreva("=== DIA DA SEMANA ===")

        inteiro dia
        escreva("Digite um numero de 1 a 7: ")
        leia(dia)

        escolha (dia) {
            caso 1:
                escreva("Segunda-feira")
                pare
            caso 2:
                escreva("Terca-feira")
                pare
            caso 3:
                escreva("Quarta-feira")
                pare
            caso 4:
                escreva("Quinta-feira")
                pare
            caso 5:
                escreva("Sexta-feira")
                pare
            caso 6:
                escreva("Sabado — fim de semana!")
                pare
            caso 7:
                escreva("Domingo — fim de semana!")
                pare
            contrario:
                escreva("Numero invalido! Informe um valor de 1 a 7.")
                pare
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Menu de opcoes (sistema de loja)
        // ─────────────────────────────────────────────
        escreva("╔══════════════════════════════════╗")
        escreva("║         LOJA VIRTUAL              ║")
        escreva("╠══════════════════════════════════╣")
        escreva("║  1 - Ver produtos                 ║")
        escreva("║  2 - Adicionar ao carrinho        ║")
        escreva("║  3 - Finalizar compra             ║")
        escreva("║  4 - Acompanhar pedido            ║")
        escreva("║  5 - Sair                         ║")
        escreva("╚══════════════════════════════════╝")

        inteiro opcao
        escreva("Escolha uma opcao: ")
        leia(opcao)
        escreva()

        escolha (opcao) {
            caso 1:
                escreva("Exibindo catalogo de produtos...")
                escreva("  - Camiseta   R$ 49.90")
                escreva("  - Calca      R$ 89.90")
                escreva("  - Tenis      R$ 199.90")
                pare
            caso 2:
                escreva("Produto adicionado ao carrinho!")
                pare
            caso 3:
                escreva("Processando pagamento...")
                escreva("Compra finalizada com sucesso!")
                pare
            caso 4:
                escreva("Seu pedido esta a caminho. Previsao: 3 dias uteis.")
                pare
            caso 5:
                escreva("Ate logo! Obrigado por visitar nossa loja.")
                pare
            contrario:
                escreva("Opcao invalida! Escolha um numero de 1 a 5.")
                pare
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Mes e estacao do ano
        // (hemisfério sul)
        // ─────────────────────────────────────────────
        escreva("=== MES E ESTACAO DO ANO ===")

        inteiro mes
        escreva("Digite o numero do mes (1 a 12): ")
        leia(mes)

        escreva("Mes: ")
        escolha (mes) {
            caso 1:
                escreva("Janeiro")
                escreva("Estacao: Verao")
                pare
            caso 2:
                escreva("Fevereiro")
                escreva("Estacao: Verao")
                pare
            caso 3:
                escreva("Marco")
                escreva("Estacao: Outono")
                pare
            caso 4:
                escreva("Abril")
                escreva("Estacao: Outono")
                pare
            caso 5:
                escreva("Maio")
                escreva("Estacao: Outono")
                pare
            caso 6:
                escreva("Junho")
                escreva("Estacao: Inverno")
                pare
            caso 7:
                escreva("Julho")
                escreva("Estacao: Inverno")
                pare
            caso 8:
                escreva("Agosto")
                escreva("Estacao: Inverno")
                pare
            caso 9:
                escreva("Setembro")
                escreva("Estacao: Primavera")
                pare
            caso 10:
                escreva("Outubro")
                escreva("Estacao: Primavera")
                pare
            caso 11:
                escreva("Novembro")
                escreva("Estacao: Primavera")
                pare
            caso 12:
                escreva("Dezembro")
                escreva("Estacao: Verao")
                pare
            contrario:
                escreva("Mes invalido!")
                pare
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Calculadora com menu
        // Combina escolha/caso com se/senao
        // ─────────────────────────────────────────────
        escreva("=== CALCULADORA ===")
        escreva("1 - Somar")
        escreva("2 - Subtrair")
        escreva("3 - Multiplicar")
        escreva("4 - Dividir")
        escreva()

        inteiro op
        real num1, num2

        escreva("Operacao: ")
        leia(op)

        escreva("Primeiro numero: ")
        leia(num1)

        escreva("Segundo numero: ")
        leia(num2)

        escreva()

        escolha (op) {
            caso 1:
                escreva(num1, " + ", num2, " = ", num1 + num2)
                pare
            caso 2:
                escreva(num1, " - ", num2, " = ", num1 - num2)
                pare
            caso 3:
                escreva(num1, " * ", num2, " = ", num1 * num2)
                pare
            caso 4:
                se (num2 == 0.0) {
                    escreva("Erro: divisao por zero nao e permitida!")
                } senao {
                    escreva(num1, " / ", num2, " = ", num1 / num2)
                }
                pare
            contrario:
                escreva("Operacao invalida! Escolha entre 1 e 4.")
                pare
        }
    }
}
