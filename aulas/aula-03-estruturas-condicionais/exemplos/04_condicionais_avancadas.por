/*
 * Estruturas de Fluxo de Controle
 * Exemplo 04: Condicionais Avancadas
 *
 * Demonstra tecnicas mais avancadas com condicionais:
 *   - Operadores logicos: e, ou, nao
 *   - Condicionais aninhadas (se dentro de se)
 *   - Combinando escolha com se/senao
 *   - Boas praticas: simplificar com operadores logicos
 *
 * Exemplos praticos:
 *   - Sistema de acesso (usuario + senha)
 *   - Classificacao de triangulo
 *   - Desconto progressivo com bonus
 *   - Verificacao de ano bissexto
 */

programa {
    funcao inicio() {
        // ─────────────────────────────────────────────
        // EXEMPLO 1: Operadores logicos - e, ou, nao
        // ─────────────────────────────────────────────
        escreval("=== OPERADORES LOGICOS ===")
        escreval()

        inteiro idade
        logico tem_carteira

        escreva("Sua idade: ")
        leia(idade)

        inteiro resposta
        escreva("Tem carteira de motorista? (1=Sim / 0=Nao): ")
        leia(resposta)
        tem_carteira = (resposta == 1)

        escreval()

        // Operador "e" (AND): ambos precisam ser verdadeiros
        se (idade >= 18 e tem_carteira) {
            escreval("Habilitado para dirigir.")
        } senao se (idade >= 18 e nao tem_carteira) {
            escreval("Maior de idade, mas sem carteira de motorista.")
        } senao {
            escreval("Menor de idade. Nao pode dirigir.")
        }

        // Operador "ou" (OR): pelo menos um precisa ser verdadeiro
        se (idade < 12 ou idade >= 65) {
            escreval("Tem direito a meia-entrada em eventos culturais.")
        } senao {
            escreval("Sem desconto de meia-entrada.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Sistema de login
        // Aninhamento com multiplas verificacoes
        // ─────────────────────────────────────────────
        escreval("=== SISTEMA DE LOGIN ===")

        // Credenciais corretas (definidas no codigo)
        cadeia usuario_correto = "admin"
        cadeia senha_correta = "1234"

        cadeia usuario_digitado, senha_digitada

        escreva("Usuario: ")
        leia(usuario_digitado)

        escreva("Senha: ")
        leia(senha_digitada)

        escreval()

        se (usuario_digitado == usuario_correto) {
            se (senha_digitada == senha_correta) {
                escreval(">>> Acesso concedido! Bem-vindo, ", usuario_digitado, "! <<<")
            } senao {
                escreval("Senha incorreta. Tente novamente.")
            }
        } senao {
            escreval("Usuario nao encontrado.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Classificacao de triangulo
        // Combina validacao + classificacao aninhada
        // ─────────────────────────────────────────────
        escreval("=== CLASSIFICADOR DE TRIANGULO ===")

        real lado_a, lado_b, lado_c

        escreva("Lado A: ")
        leia(lado_a)
        escreva("Lado B: ")
        leia(lado_b)
        escreva("Lado C: ")
        leia(lado_c)

        escreval()

        // Primeiro: valida se forma um triangulo valido
        // (cada lado deve ser menor que a soma dos outros dois)
        logico e_triangulo = (lado_a < lado_b + lado_c) e (lado_b < lado_a + lado_c) e (lado_c < lado_a + lado_b)

        se (nao e_triangulo) {
            escreval("INVALIDO: Esses lados nao formam um triangulo.")
        } senao {
            escreval("Triangulo VALIDO!")

            // Segundo: classifica o triangulo
            se (lado_a == lado_b e lado_b == lado_c) {
                escreval("Tipo: Equilatero (todos os lados iguais)")
            } senao se (lado_a == lado_b ou lado_b == lado_c ou lado_a == lado_c) {
                escreval("Tipo: Isosceles (dois lados iguais)")
            } senao {
                escreval("Tipo: Escaleno (todos os lados diferentes)")
            }
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Desconto progressivo com bonus premium
        // Combina faixas de valor + condicao logico
        // ─────────────────────────────────────────────
        escreval("=== SISTEMA DE DESCONTO ===")

        real valor_compra
        inteiro eh_premium

        escreva("Valor da compra: R$ ")
        leia(valor_compra)

        escreva("Cliente premium? (1=Sim / 0=Nao): ")
        leia(eh_premium)

        logico premium = (eh_premium == 1)

        real percentual_desconto = 0.0

        se (valor_compra >= 1000.0) {
            percentual_desconto = 15.0
        } senao se (valor_compra >= 500.0) {
            percentual_desconto = 10.0
        } senao se (valor_compra >= 100.0) {
            percentual_desconto = 5.0
        }

        // Bonus para clientes premium
        se (premium) {
            percentual_desconto = percentual_desconto + 5.0
        }

        real desconto = valor_compra * (percentual_desconto / 100.0)
        real valor_final = valor_compra - desconto

        escreval()
        escreval("Valor original: R$ ", valor_compra)

        se (percentual_desconto > 0.0) {
            escreval("Desconto total: ", percentual_desconto, "% (-R$ ", desconto, ")")
            se (premium) {
                escreval("  (inclui +5% bonus premium)")
            }
        } senao {
            escreval("Sem desconto. Compre acima de R$ 100 para ter desconto!")
        }

        escreval("Valor final: R$ ", valor_final)
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 5: Verificador de ano bissexto
        // Regra: divisivel por 4, exceto seculares,
        //        exceto se tambem divisivel por 400
        // ─────────────────────────────────────────────
        escreval("=== VERIFICADOR DE ANO BISSEXTO ===")
        escreval("Regras:")
        escreval("  - Divisivel por 4 E nao divisivel por 100 → Bissexto")
        escreval("  - Divisivel por 400 → Bissexto")
        escreval("  - Demais casos → Nao bissexto")
        escreval()

        inteiro ano
        escreva("Digite um ano: ")
        leia(ano)

        logico bissexto = (ano % 400 == 0) ou (ano % 4 == 0 e ano % 100 != 0)

        se (bissexto) {
            escreval(ano, " e um ano BISSEXTO (366 dias).")
        } senao {
            escreval(ano, " NAO e um ano bissexto (365 dias).")
        }
    }
}
