/*
 * Variaveis e Tipos de Dados
 * Exemplo 03: Operacoes Avancadas e Biblioteca Matematica
 *
 * Demonstra:
 *   - Biblioteca Matematica do Portugol
 *   - Raiz quadrada
 *   - Potenciacao
 *   - Valor absoluto
 *   - Arredondamento (teto, piso, arredondar)
 *   - Constante PI
 *   - Conversao de tipos (casting)
 *   - Exemplos praticos com formulas matematicas
 */

programa {
    inclua biblioteca Matematica --> mat

    funcao inicio() {
        // ─────────────────────────────────────────────
        // RAIZ QUADRADA
        // mat.raiz(numero)
        // ─────────────────────────────────────────────
        escreva("=== RAIZ QUADRADA ===")
        escreva("raiz(4)   = ", mat.raiz(4))     // 2.0
        escreva("raiz(9)   = ", mat.raiz(9))     // 3.0
        escreva("raiz(16)  = ", mat.raiz(16))    // 4.0
        escreva("raiz(25)  = ", mat.raiz(25))    // 5.0
        escreva("raiz(2)   = ", mat.raiz(2))     // 1.41421...
        escreva("raiz(100) = ", mat.raiz(100))   // 10.0
        escreva()

        // ─────────────────────────────────────────────
        // POTENCIACAO
        // mat.potencia(base, expoente)
        // ─────────────────────────────────────────────
        escreva("=== POTENCIACAO ===")
        escreva("potencia(2, 0)  = ", mat.potencia(2, 0))    // 1
        escreva("potencia(2, 1)  = ", mat.potencia(2, 1))    // 2
        escreva("potencia(2, 8)  = ", mat.potencia(2, 8))    // 256
        escreva("potencia(2, 10) = ", mat.potencia(2, 10))   // 1024
        escreva("potencia(3, 3)  = ", mat.potencia(3, 3))    // 27
        escreva("potencia(10, 3) = ", mat.potencia(10, 3))   // 1000
        escreva("potencia(5, 2)  = ", mat.potencia(5, 2))    // 25
        escreva()

        // ─────────────────────────────────────────────
        // VALOR ABSOLUTO
        // mat.absoluto(numero) — retorna sempre positivo
        // ─────────────────────────────────────────────
        escreva("=== VALOR ABSOLUTO ===")
        escreva("absoluto(-10) = ", mat.absoluto(-10))   // 10
        escreva("absoluto(10)  = ", mat.absoluto(10))    // 10
        escreva("absoluto(-5)  = ", mat.absoluto(-5))    // 5
        escreva("absoluto(0)   = ", mat.absoluto(0))     // 0
        escreva()

        // ─────────────────────────────────────────────
        // ARREDONDAMENTO
        // ─────────────────────────────────────────────
        escreva("=== ARREDONDAMENTO ===")

        real valor = 3.567

        // teto: sempre arredonda para CIMA
        escreva("teto(3.1)  = ", mat.teto(3.1))    // 4
        escreva("teto(3.9)  = ", mat.teto(3.9))    // 4
        escreva("teto(-3.1) = ", mat.teto(-3.1))   // -3 (menos negativo)
        escreva()

        // piso: sempre arredonda para BAIXO
        escreva("piso(3.1)  = ", mat.piso(3.1))    // 3
        escreva("piso(3.9)  = ", mat.piso(3.9))    // 3
        escreva("piso(-3.1) = ", mat.piso(-3.1))   // -4 (mais negativo)
        escreva()

        // arredondar: arredondamento matematico classico (2° parametro = casas decimais)
        escreva("arredondar(3.567, 0) = ", mat.arredondar(3.567, 0))   // 4
        escreva("arredondar(3.567, 1) = ", mat.arredondar(3.567, 1))   // 3.6
        escreva("arredondar(3.567, 2) = ", mat.arredondar(3.567, 2))   // 3.57
        escreva("arredondar(3.444, 1) = ", mat.arredondar(3.444, 1))   // 3.4
        escreva()

        // ─────────────────────────────────────────────
        // MAIOR E MENOR
        // ─────────────────────────────────────────────
        escreva("=== MAIOR E MENOR ===")
        escreva("maior(10, 20)    = ", mat.maior(10, 20))     // 20
        escreva("maior(100, 5)    = ", mat.maior(100, 5))     // 100
        escreva("maior(-5, -10)   = ", mat.maior(-5, -10))    // -5
        escreva()
        escreva("menor(10, 20)    = ", mat.menor(10, 20))     // 10
        escreva("menor(100, 5)    = ", mat.menor(100, 5))     // 5
        escreva("menor(-5, -10)   = ", mat.menor(-5, -10))    // -10
        escreva()

        // ─────────────────────────────────────────────
        // CONSTANTE PI
        // ─────────────────────────────────────────────
        escreva("=== CONSTANTE PI ===")
        escreva("PI = ", mat.PI)   // 3.141592653589793
        escreva()

        // ─────────────────────────────────────────────
        // CONVERSAO DE TIPOS (CASTING)
        // ─────────────────────────────────────────────
        escreva("=== CONVERSAO DE TIPOS ===")

        real numero_real = 9.99
        inteiro truncado = (inteiro) numero_real   // 9 — trunca, nao arredonda!
        escreva("(inteiro) 9.99 = ", truncado)

        inteiro numero_inteiro = 7
        real convertido = (real) numero_inteiro    // 7.0
        escreva("(real) 7 = ", convertido)

        // Cuidado com divisao inteira!
        inteiro div_inteira = 7 / 2                    // 3 (perde o .5)
        real div_real1 = (real) 7 / 2                  // 3.5 (casting antes da divisao)
        real div_real2 = 7.0 / 2                        // 3.5 (um dos operandos e real)

        escreva("7 / 2 (inteiro):         ", div_inteira)
        escreva("(real) 7 / 2:            ", div_real1)
        escreva("7.0 / 2:                 ", div_real2)
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLOS PRATICOS COM FORMULAS
        // ─────────────────────────────────────────────

        // Area e perimetro do circulo
        escreva("=== CIRCULO ===")
        real raio = 5.0
        real area_circulo = mat.PI * mat.potencia(raio, 2)
        real perimetro = 2.0 * mat.PI * raio

        escreva("Raio:       ", raio)
        escreva("Area:       ", mat.arredondar(area_circulo, 4))
        escreva("Perimetro:  ", mat.arredondar(perimetro, 4))
        escreva()

        // Hipotenusa — Teorema de Pitagoras: c = raiz(a² + b²)
        escreva("=== TEOREMA DE PITAGORAS ===")
        real cateto_a = 3.0
        real cateto_b = 4.0
        real hipotenusa = mat.raiz(mat.potencia(cateto_a, 2) + mat.potencia(cateto_b, 2))

        escreva("Cateto a:    ", cateto_a)
        escreva("Cateto b:    ", cateto_b)
        escreva("Hipotenusa:  ", hipotenusa)   // 5.0 (triangulo 3-4-5)
        escreva()

        // Formula de Bhaskara: x = (-b +/- raiz(delta)) / 2a
        // Equacao: 1x² - 5x + 6 = 0  (raizes: x=2 e x=3)
        escreva("=== FORMULA DE BHASKARA ===")
        escreva("Equacao: x^2 - 5x + 6 = 0")
        real coef_a = 1.0
        real coef_b = -5.0
        real coef_c = 6.0

        real delta = mat.potencia(coef_b, 2) - (4.0 * coef_a * coef_c)
        escreva("Delta: ", delta)

        real x1 = (-coef_b + mat.raiz(delta)) / (2.0 * coef_a)
        real x2 = (-coef_b - mat.raiz(delta)) / (2.0 * coef_a)
        escreva("x1 = ", x1)   // 3.0
        escreva("x2 = ", x2)   // 2.0
        escreva()

        // Juros compostos: M = C * (1 + i)^n
        escreva("=== JUROS COMPOSTOS ===")
        real capital = 1000.0    // R$ 1000,00
        real taxa = 0.05         // 5% ao mes
        inteiro meses = 12

        real montante = capital * mat.potencia(1.0 + taxa, meses)
        escreva("Capital:   R$ ", capital)
        escreva("Taxa:      ", taxa * 100, "% ao mes")
        escreva("Periodo:   ", meses, " meses")
        escreva("Montante:  R$ ", mat.arredondar(montante, 2))
        escreva("Lucro:     R$ ", mat.arredondar(montante - capital, 2))
    }
}
