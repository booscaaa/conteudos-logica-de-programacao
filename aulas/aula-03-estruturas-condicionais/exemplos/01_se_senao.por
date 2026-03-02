/*
 * Estruturas de Fluxo de Controle
 * Exemplo 01: se e se/senao
 *
 * Demonstra as estruturas condicionais basicas:
 *   - se         → executa apenas se verdadeiro
 *   - se/senao   → executa um bloco OU o outro
 *
 * Exemplos praticos:
 *   - Verificacao de temperatura
 *   - Aprovacao de aluno
 *   - Par ou impar
 *   - Desconto em compra
 */

programa {
    funcao inicio() {
        // ─────────────────────────────────────────────
        // EXEMPLO 1: Estrutura "se" simples
        // O bloco so executa se a condicao for verdadeira
        // ─────────────────────────────────────────────
        escreva("=== ESTRUTURA: se ===")

        inteiro temperatura = 35

        escreva("Temperatura: ", temperatura, " graus Celsius")

        se (temperatura > 30) {
            escreva("Aviso: Esta muito quente! Hidrate-se.")
        }

        se (temperatura > 40) {
            escreva("Alerta: Temperatura extrema!")
            // Este bloco NAO executa pois 35 nao e > 40
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Estrutura "se/senao"
        // Sempre executa UM dos dois blocos
        // ─────────────────────────────────────────────
        escreva("=== ESTRUTURA: se/senao ===")

        inteiro nota
        escreva("Digite sua nota (0 a 10): ")
        leia(nota)

        se (nota >= 7) {
            escreva("Situacao: APROVADO!")
            escreva("Parabens pelo desempenho.")
        } senao {
            escreva("Situacao: REPROVADO.")
            escreva("Estude mais para a proxima.")
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Par ou impar
        // Usando o operador modulo (%) para verificar resto
        // ─────────────────────────────────────────────
        escreva("=== PAR OU IMPAR ===")

        inteiro numero
        escreva("Digite um numero inteiro: ")
        leia(numero)

        se (numero % 2 == 0) {
            escreva(numero, " e PAR.")
        } senao {
            escreva(numero, " e IMPAR.")
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Desconto em compra
        // Condicional com calculo
        // ─────────────────────────────────────────────
        escreva("=== DESCONTO EM COMPRA ===")

        real preco
        escreva("Informe o valor da compra: R$ ")
        leia(preco)

        real desconto, preco_final

        se (preco > 100.0) {
            desconto = preco * 0.15   // 15% de desconto
            preco_final = preco - desconto
            escreva("Desconto de 15% aplicado: -R$ ", desconto)
        } senao {
            desconto = 0.0
            preco_final = preco
            escreva("Nenhum desconto. Compre acima de R$ 100 para ter desconto.")
        }

        escreva("Valor final: R$ ", preco_final)
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 5: Comparando dois numeros
        // ─────────────────────────────────────────────
        escreva("=== COMPARANDO NUMEROS ===")

        inteiro a, b
        escreva("Digite o primeiro numero: ")
        leia(a)
        escreva("Digite o segundo numero: ")
        leia(b)

        se (a > b) {
            escreva("O maior numero e: ", a)
        } senao {
            se (b > a) {
                escreva("O maior numero e: ", b)
            } senao {
                escreva("Os dois numeros sao iguais!")
            }
        }
    }
}
