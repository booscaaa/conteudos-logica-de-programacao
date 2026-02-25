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
        escreval("=== RAIZ QUADRADA ===")
        escreval("raiz(4)   = ", mat.raiz(4))     // 2.0
        escreval("raiz(9)   = ", mat.raiz(9))     // 3.0
        escreval("raiz(16)  = ", mat.raiz(16))    // 4.0
        escreval("raiz(25)  = ", mat.raiz(25))    // 5.0
        escreval("raiz(2)   = ", mat.raiz(2))     // 1.41421...
        escreval("raiz(100) = ", mat.raiz(100))   // 10.0
        escreval()

        // ─────────────────────────────────────────────
        // POTENCIACAO
        // mat.potencia(base, expoente)
        // ─────────────────────────────────────────────
        escreval("=== POTENCIACAO ===")
        escreval("potencia(2, 0)  = ", mat.potencia(2, 0))    // 1
        escreval("potencia(2, 1)  = ", mat.potencia(2, 1))    // 2
        escreval("potencia(2, 8)  = ", mat.potencia(2, 8))    // 256
        escreval("potencia(2, 10) = ", mat.potencia(2, 10))   // 1024
        escreval("potencia(3, 3)  = ", mat.potencia(3, 3))    // 27
        escreval("potencia(10, 3) = ", mat.potencia(10, 3))   // 1000
        escreval("potencia(5, 2)  = ", mat.potencia(5, 2))    // 25
        escreval()

        // ─────────────────────────────────────────────
        // VALOR ABSOLUTO
        // mat.absoluto(numero) — retorna sempre positivo
        // ─────────────────────────────────────────────
        escreval("=== VALOR ABSOLUTO ===")
        escreval("absoluto(-10) = ", mat.absoluto(-10))   // 10
        escreval("absoluto(10)  = ", mat.absoluto(10))    // 10
        escreval("absoluto(-5)  = ", mat.absoluto(-5))    // 5
        escreval("absoluto(0)   = ", mat.absoluto(0))     // 0
        escreval()

        // ─────────────────────────────────────────────
        // ARREDONDAMENTO
        // ─────────────────────────────────────────────
        escreval("=== ARREDONDAMENTO ===")

        real valor = 3.567

        // teto: sempre arredonda para CIMA
        escreval("teto(3.1)  = ", mat.teto(3.1))    // 4
        escreval("teto(3.9)  = ", mat.teto(3.9))    // 4
        escreval("teto(-3.1) = ", mat.teto(-3.1))   // -3 (menos negativo)
        escreval()

        // piso: sempre arredonda para BAIXO
        escreval("piso(3.1)  = ", mat.piso(3.1))    // 3
        escreval("piso(3.9)  = ", mat.piso(3.9))    // 3
        escreval("piso(-3.1) = ", mat.piso(-3.1))   // -4 (mais negativo)
        escreval()

        // arredondar: arredondamento matematico classico (2° parametro = casas decimais)
        escreval("arredondar(3.567, 0) = ", mat.arredondar(3.567, 0))   // 4
        escreval("arredondar(3.567, 1) = ", mat.arredondar(3.567, 1))   // 3.6
        escreval("arredondar(3.567, 2) = ", mat.arredondar(3.567, 2))   // 3.57
        escreval("arredondar(3.444, 1) = ", mat.arredondar(3.444, 1))   // 3.4
        escreval()

        // ─────────────────────────────────────────────
        // MAIOR E MENOR
        // ─────────────────────────────────────────────
        escreval("=== MAIOR E MENOR ===")
        escreval("maior(10, 20)    = ", mat.maior(10, 20))     // 20
        escreval("maior(100, 5)    = ", mat.maior(100, 5))     // 100
        escreval("maior(-5, -10)   = ", mat.maior(-5, -10))    // -5
        escreval()
        escreval("menor(10, 20)    = ", mat.menor(10, 20))     // 10
        escreval("menor(100, 5)    = ", mat.menor(100, 5))     // 5
        escreval("menor(-5, -10)   = ", mat.menor(-5, -10))    // -10
        escreval()

        // ─────────────────────────────────────────────
        // CONSTANTE PI
        // ─────────────────────────────────────────────
        escreval("=== CONSTANTE PI ===")
        escreval("PI = ", mat.PI)   // 3.141592653589793
        escreval()

        // ─────────────────────────────────────────────
        // CONVERSAO DE TIPOS (CASTING)
        // ─────────────────────────────────────────────
        escreval("=== CONVERSAO DE TIPOS ===")

        real numero_real = 9.99
        inteiro truncado = (inteiro) numero_real   // 9 — trunca, nao arredonda!
        escreval("(inteiro) 9.99 = ", truncado)

        inteiro numero_inteiro = 7
        real convertido = (real) numero_inteiro    // 7.0
        escreval("(real) 7 = ", convertido)

        // Cuidado com divisao inteira!
        inteiro div_inteira = 7 / 2                    // 3 (perde o .5)
        real div_real1 = (real) 7 / 2                  // 3.5 (casting antes da divisao)
        real div_real2 = 7.0 / 2                        // 3.5 (um dos operandos e real)

        escreval("7 / 2 (inteiro):         ", div_inteira)
        escreval("(real) 7 / 2:            ", div_real1)
        escreval("7.0 / 2:                 ", div_real2)
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLOS PRATICOS COM FORMULAS
        // ─────────────────────────────────────────────

        // Area e perimetro do circulo
        escreval("=== CIRCULO ===")
        real raio = 5.0
        real area_circulo = mat.PI * mat.potencia(raio, 2)
        real perimetro = 2.0 * mat.PI * raio

        escreval("Raio:       ", raio)
        escreval("Area:       ", mat.arredondar(area_circulo, 4))
        escreval("Perimetro:  ", mat.arredondar(perimetro, 4))
        escreval()

        // Hipotenusa — Teorema de Pitagoras: c = raiz(a² + b²)
        escreval("=== TEOREMA DE PITAGORAS ===")
        real cateto_a = 3.0
        real cateto_b = 4.0
        real hipotenusa = mat.raiz(mat.potencia(cateto_a, 2) + mat.potencia(cateto_b, 2))

        escreval("Cateto a:    ", cateto_a)
        escreval("Cateto b:    ", cateto_b)
        escreval("Hipotenusa:  ", hipotenusa)   // 5.0 (triangulo 3-4-5)
        escreval()

        // Formula de Bhaskara: x = (-b +/- raiz(delta)) / 2a
        // Equacao: 1x² - 5x + 6 = 0  (raizes: x=2 e x=3)
        escreval("=== FORMULA DE BHASKARA ===")
        escreval("Equacao: x^2 - 5x + 6 = 0")
        real coef_a = 1.0
        real coef_b = -5.0
        real coef_c = 6.0

        real delta = mat.potencia(coef_b, 2) - (4.0 * coef_a * coef_c)
        escreval("Delta: ", delta)

        real x1 = (-coef_b + mat.raiz(delta)) / (2.0 * coef_a)
        real x2 = (-coef_b - mat.raiz(delta)) / (2.0 * coef_a)
        escreval("x1 = ", x1)   // 3.0
        escreval("x2 = ", x2)   // 2.0
        escreval()

        // Juros compostos: M = C * (1 + i)^n
        escreval("=== JUROS COMPOSTOS ===")
        real capital = 1000.0    // R$ 1000,00
        real taxa = 0.05         // 5% ao mes
        inteiro meses = 12

        real montante = capital * mat.potencia(1.0 + taxa, meses)
        escreval("Capital:   R$ ", capital)
        escreval("Taxa:      ", taxa * 100, "% ao mes")
        escreval("Periodo:   ", meses, " meses")
        escreval("Montante:  R$ ", mat.arredondar(montante, 2))
        escreval("Lucro:     R$ ", mat.arredondar(montante - capital, 2))
    }
}
