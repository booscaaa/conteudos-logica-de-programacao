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
        escreval("=== ESTRUTURA: se ===")

        inteiro temperatura = 35

        escreval("Temperatura: ", temperatura, " graus Celsius")

        se (temperatura > 30) {
            escreval("Aviso: Esta muito quente! Hidrate-se.")
        }

        se (temperatura > 40) {
            escreval("Alerta: Temperatura extrema!")
            // Este bloco NAO executa pois 35 nao e > 40
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Estrutura "se/senao"
        // Sempre executa UM dos dois blocos
        // ─────────────────────────────────────────────
        escreval("=== ESTRUTURA: se/senao ===")

        inteiro nota
        escreva("Digite sua nota (0 a 10): ")
        leia(nota)

        se (nota >= 7) {
            escreval("Situacao: APROVADO!")
            escreval("Parabens pelo desempenho.")
        } senao {
            escreval("Situacao: REPROVADO.")
            escreval("Estude mais para a proxima.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Par ou impar
        // Usando o operador modulo (%) para verificar resto
        // ─────────────────────────────────────────────
        escreval("=== PAR OU IMPAR ===")

        inteiro numero
        escreva("Digite um numero inteiro: ")
        leia(numero)

        se (numero % 2 == 0) {
            escreval(numero, " e PAR.")
        } senao {
            escreval(numero, " e IMPAR.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Desconto em compra
        // Condicional com calculo
        // ─────────────────────────────────────────────
        escreval("=== DESCONTO EM COMPRA ===")

        real preco
        escreva("Informe o valor da compra: R$ ")
        leia(preco)

        real desconto, preco_final

        se (preco > 100.0) {
            desconto = preco * 0.15   // 15% de desconto
            preco_final = preco - desconto
            escreval("Desconto de 15% aplicado: -R$ ", desconto)
        } senao {
            desconto = 0.0
            preco_final = preco
            escreval("Nenhum desconto. Compre acima de R$ 100 para ter desconto.")
        }

        escreval("Valor final: R$ ", preco_final)
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 5: Comparando dois numeros
        // ─────────────────────────────────────────────
        escreval("=== COMPARANDO NUMEROS ===")

        inteiro a, b
        escreva("Digite o primeiro numero: ")
        leia(a)
        escreva("Digite o segundo numero: ")
        leia(b)

        se (a > b) {
            escreval("O maior numero e: ", a)
        } senao {
            se (b > a) {
                escreval("O maior numero e: ", b)
            } senao {
                escreval("Os dois numeros sao iguais!")
            }
        }
    }
}
