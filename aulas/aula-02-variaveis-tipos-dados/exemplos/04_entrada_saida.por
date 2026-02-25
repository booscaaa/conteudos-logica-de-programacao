/*
 * Variaveis e Tipos de Dados
 * Exemplo 04: Entrada e Saida de Dados
 *
 * Demonstra como interagir com o usuario:
 *   - escreva()  — exibe texto sem nova linha
 *   - escreval() — exibe texto com nova linha (Enter)
 *   - leia()     — le valor digitado pelo usuario
 *
 * Exemplos praticos:
 *   - Calculadora simples
 *   - Calculo de IMC
 *   - Calculo de area de figuras geometricas
 */

programa {
    inclua biblioteca Matematica --> mat

    funcao inicio() {
        // ─────────────────────────────────────────────
        // EXEMPLO 1: Saudacao personalizada
        // ─────────────────────────────────────────────
        escreval("╔══════════════════════════════╗")
        escreval("║   BEM-VINDO AO PORTUGOL!     ║")
        escreval("╚══════════════════════════════╝")
        escreval()

        cadeia nome
        inteiro idade

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        escreval()
        escreval("Ola, ", nome, "!")
        escreval("Voce tem ", idade, " anos.")

        // Verificando se e maior de idade
        // (logica condicional — abordada no topico de estruturas condicionais)
        logico maior = (idade >= 18)
        escreval("Maior de idade: ", maior)
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Calculadora simples
        // ─────────────────────────────────────────────
        escreval("=== CALCULADORA ===")

        real num1, num2

        escreva("Digite o primeiro numero: ")
        leia(num1)

        escreva("Digite o segundo numero: ")
        leia(num2)

        escreval()
        escreval("Resultados:")
        escreval("  ", num1, " + ", num2, " = ", num1 + num2)
        escreval("  ", num1, " - ", num2, " = ", num1 - num2)
        escreval("  ", num1, " * ", num2, " = ", num1 * num2)

        // Evita divisao por zero
        se (num2 != 0) {
            escreval("  ", num1, " / ", num2, " = ", num1 / num2)
            escreval("  ", num1, " % ", num2, " = ", num1 % num2)
        } senao {
            escreval("  Divisao por zero nao e permitida!")
        }
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Calculo de IMC
        // IMC = peso / (altura * altura)
        // ─────────────────────────────────────────────
        escreval("=== CALCULO DE IMC ===")
        escreval("(Indice de Massa Corporal)")
        escreval()

        real peso, altura

        escreva("Digite seu peso em kg (ex: 70.5): ")
        leia(peso)

        escreva("Digite sua altura em metros (ex: 1.75): ")
        leia(altura)

        real imc = peso / (altura * altura)
        real imc_arredondado = mat.arredondar(imc, 2)

        escreval()
        escreval("Seu IMC e: ", imc_arredondado)
        escreval()
        escreval("Classificacao:")
        escreval("  < 18.5  : Abaixo do peso")
        escreval("  18.5-24.9: Peso normal")
        escreval("  25.0-29.9: Sobrepeso")
        escreval("  >= 30.0  : Obesidade")
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Area de figuras geometricas
        // ─────────────────────────────────────────────
        escreval("=== AREA DE FIGURAS GEOMETRICAS ===")
        escreval()

        // Quadrado
        escreval("-- Quadrado --")
        real lado_quadrado
        escreva("Lado do quadrado: ")
        leia(lado_quadrado)
        real area_quadrado = lado_quadrado * lado_quadrado
        escreval("Area do quadrado: ", area_quadrado)
        escreval()

        // Retangulo
        escreval("-- Retangulo --")
        real largura, comprimento
        escreva("Largura: ")
        leia(largura)
        escreva("Comprimento: ")
        leia(comprimento)
        real area_retangulo = largura * comprimento
        escreval("Area do retangulo: ", area_retangulo)
        escreval()

        // Triangulo
        escreval("-- Triangulo --")
        real base_triangulo, altura_triangulo
        escreva("Base: ")
        leia(base_triangulo)
        escreva("Altura: ")
        leia(altura_triangulo)
        real area_triangulo = (base_triangulo * altura_triangulo) / 2.0
        escreval("Area do triangulo: ", area_triangulo)
        escreval()

        // Circulo
        escreval("-- Circulo --")
        real raio
        escreva("Raio: ")
        leia(raio)
        real area_circulo = mat.PI * mat.potencia(raio, 2)
        escreval("Area do circulo: ", mat.arredondar(area_circulo, 4))
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 5: Conversao de moeda simples
        // ─────────────────────────────────────────────
        escreval("=== CONVERSAO DE MOEDA ===")

        real valor_brl, cotacao_dolar, cotacao_euro

        escreva("Valor em Reais (R$): ")
        leia(valor_brl)

        escreva("Cotacao do Dolar (ex: 5.20): ")
        leia(cotacao_dolar)

        escreva("Cotacao do Euro (ex: 5.60): ")
        leia(cotacao_euro)

        real valor_usd = valor_brl / cotacao_dolar
        real valor_eur = valor_brl / cotacao_euro

        escreval()
        escreval("R$ ", mat.arredondar(valor_brl, 2), " equivale a:")
        escreval("  US$ ", mat.arredondar(valor_usd, 2))
        escreval("  EUR ", mat.arredondar(valor_eur, 2))
        escreval()

        // ─────────────────────────────────────────────
        // DICAS SOBRE ESCREVA vs ESCREVAL
        // ─────────────────────────────────────────────
        escreval("=== DIFERENCA: escreva vs escreval ===")

        escreva("Esta frase ")
        escreva("esta na mesma linha.")
        escreval()  // pula linha manualmente

        escreval("Esta frase ja pula para a proxima linha automaticamente.")
        escreval("E esta tambem.")
    }
}
