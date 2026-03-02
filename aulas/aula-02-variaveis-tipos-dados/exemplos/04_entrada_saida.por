/*
 * Variaveis e Tipos de Dados
 * Exemplo 04: Entrada e Saida de Dados
 *
 * Demonstra como interagir com o usuario:
 *   - escreva()  — exibe texto sem nova linha
 *   - escreva() — exibe texto com nova linha (Enter)
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
        escreva("╔══════════════════════════════╗")
        escreva("║   BEM-VINDO AO PORTUGOL!     ║")
        escreva("╚══════════════════════════════╝")
        escreva()

        cadeia nome
        inteiro idade

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        escreva()
        escreva("Ola, ", nome, "!")
        escreva("Voce tem ", idade, " anos.")

        // Verificando se e maior de idade
        // (logica condicional — abordada no topico de estruturas condicionais)
        logico maior = (idade >= 18)
        escreva("Maior de idade: ", maior)
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Calculadora simples
        // ─────────────────────────────────────────────
        escreva("=== CALCULADORA ===")

        real num1, num2

        escreva("Digite o primeiro numero: ")
        leia(num1)

        escreva("Digite o segundo numero: ")
        leia(num2)

        escreva()
        escreva("Resultados:")
        escreva("  ", num1, " + ", num2, " = ", num1 + num2)
        escreva("  ", num1, " - ", num2, " = ", num1 - num2)
        escreva("  ", num1, " * ", num2, " = ", num1 * num2)

        // Evita divisao por zero
        se (num2 != 0) {
            escreva("  ", num1, " / ", num2, " = ", num1 / num2)
            escreva("  ", num1, " % ", num2, " = ", num1 % num2)
        } senao {
            escreva("  Divisao por zero nao e permitida!")
        }
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Calculo de IMC
        // IMC = peso / (altura * altura)
        // ─────────────────────────────────────────────
        escreva("=== CALCULO DE IMC ===")
        escreva("(Indice de Massa Corporal)")
        escreva()

        real peso, altura

        escreva("Digite seu peso em kg (ex: 70.5): ")
        leia(peso)

        escreva("Digite sua altura em metros (ex: 1.75): ")
        leia(altura)

        real imc = peso / (altura * altura)
        real imc_arredondado = mat.arredondar(imc, 2)

        escreva()
        escreva("Seu IMC e: ", imc_arredondado)
        escreva()
        escreva("Classificacao:")
        escreva("  < 18.5  : Abaixo do peso")
        escreva("  18.5-24.9: Peso normal")
        escreva("  25.0-29.9: Sobrepeso")
        escreva("  >= 30.0  : Obesidade")
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Area de figuras geometricas
        // ─────────────────────────────────────────────
        escreva("=== AREA DE FIGURAS GEOMETRICAS ===")
        escreva()

        // Quadrado
        escreva("-- Quadrado --")
        real lado_quadrado
        escreva("Lado do quadrado: ")
        leia(lado_quadrado)
        real area_quadrado = lado_quadrado * lado_quadrado
        escreva("Area do quadrado: ", area_quadrado)
        escreva()

        // Retangulo
        escreva("-- Retangulo --")
        real largura, comprimento
        escreva("Largura: ")
        leia(largura)
        escreva("Comprimento: ")
        leia(comprimento)
        real area_retangulo = largura * comprimento
        escreva("Area do retangulo: ", area_retangulo)
        escreva()

        // Triangulo
        escreva("-- Triangulo --")
        real base_triangulo, altura_triangulo
        escreva("Base: ")
        leia(base_triangulo)
        escreva("Altura: ")
        leia(altura_triangulo)
        real area_triangulo = (base_triangulo * altura_triangulo) / 2.0
        escreva("Area do triangulo: ", area_triangulo)
        escreva()

        // Circulo
        escreva("-- Circulo --")
        real raio
        escreva("Raio: ")
        leia(raio)
        real area_circulo = mat.PI * mat.potencia(raio, 2)
        escreva("Area do circulo: ", mat.arredondar(area_circulo, 4))
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 5: Conversao de moeda simples
        // ─────────────────────────────────────────────
        escreva("=== CONVERSAO DE MOEDA ===")

        real valor_brl, cotacao_dolar, cotacao_euro

        escreva("Valor em Reais (R$): ")
        leia(valor_brl)

        escreva("Cotacao do Dolar (ex: 5.20): ")
        leia(cotacao_dolar)

        escreva("Cotacao do Euro (ex: 5.60): ")
        leia(cotacao_euro)

        real valor_usd = valor_brl / cotacao_dolar
        real valor_eur = valor_brl / cotacao_euro

        escreva()
        escreva("R$ ", mat.arredondar(valor_brl, 2), " equivale a:")
        escreva("  US$ ", mat.arredondar(valor_usd, 2))
        escreva("  EUR ", mat.arredondar(valor_eur, 2))
        escreva()
    }
}
