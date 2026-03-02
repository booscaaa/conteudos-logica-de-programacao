/*
 * Variaveis e Tipos de Dados
 * Exemplo 02: Operacoes Matematicas Basicas
 *
 * Demonstra todos os operadores aritmeticos:
 *   +  Adicao
 *   -  Subtracao
 *   *  Multiplicacao
 *   /  Divisao
 *   %  Modulo (resto da divisao)
 *
 * Tambem mostra:
 *   - Precedencia de operadores
 *   - Operadores de atribuicao (+=, -=, *=, /=)
 *   - Incremento e decremento (++, --)
 *   - Diferenca entre divisao inteira e divisao real
 */

programa {
    funcao inicio() {
        inteiro a = 20
        inteiro b = 6

        // ─────────────────────────────────────────────
        // OPERADORES BASICOS
        // ─────────────────────────────────────────────
        escreva("=== OPERACOES BASICAS ===")
        escreva("a = ", a)
        escreva("b = ", b)
        escreva()

        escreva("Adicao:        a + b = ", a + b)
        escreva("Subtracao:     a - b = ", a - b)
        escreva("Multiplicacao: a * b = ", a * b)
        escreva("Divisao:       a / b = ", a / b)
        escreva("Modulo:        a % b = ", a % b)
        escreva()

        // ─────────────────────────────────────────────
        // DIVISAO INTEIRA vs DIVISAO REAL
        // Cuidado! Dividir dois inteiros trunca o resultado!
        // ─────────────────────────────────────────────
        escreva("=== DIVISAO: INTEIRO vs REAL ===")

        inteiro dividendo = 7
        inteiro divisor = 2

        inteiro resultado_inteiro = dividendo / divisor
        real resultado_real = (real) dividendo / divisor

        escreva("7 / 2 (divisao inteira): ", resultado_inteiro)   // 3 (truncado!)
        escreva("7 / 2 (divisao real):    ", resultado_real)       // 3.5
        escreva()

        // Outro exemplo classico:
        real resultado_classico = 1.0 / 3.0
        escreva("1.0 / 3.0 = ", resultado_classico)
        escreva()

        // ─────────────────────────────────────────────
        // MODULO (RESTO DA DIVISAO)
        // Muito util para verificar se um numero e par/impar
        // ─────────────────────────────────────────────
        escreva("=== MODULO (RESTO) ===")
        escreva("10 % 3 = ", 10 % 3)   // 1 (10 = 3*3 + 1)
        escreva("15 % 5 = ", 15 % 5)   // 0 (divisao exata)
        escreva("7 % 2  = ", 7 % 2)    // 1 (numero impar)
        escreva("8 % 2  = ", 8 % 2)    // 0 (numero par)
        escreva("17 % 4 = ", 17 % 4)   // 1 (17 = 4*4 + 1)
        escreva()

        // ─────────────────────────────────────────────
        // PRECEDENCIA DE OPERADORES
        // Mesma ordem da matematica:
        // 1. Parenteses
        // 2. Multiplicacao, Divisao, Modulo
        // 3. Adicao, Subtracao
        // ─────────────────────────────────────────────
        escreva("=== PRECEDENCIA DE OPERADORES ===")

        inteiro resultado1 = 2 + 3 * 4          // = 2 + 12 = 14 (nao 20!)
        inteiro resultado2 = (2 + 3) * 4         // = 5 * 4 = 20
        inteiro resultado3 = 10 - 2 * 3 + 1      // = 10 - 6 + 1 = 5
        inteiro resultado4 = (10 - 2) * (3 + 1)  // = 8 * 4 = 32
        inteiro resultado5 = 100 / 5 * 2          // = 20 * 2 = 40 (esq. para dir.)

        escreva("2 + 3 * 4          = ", resultado1)
        escreva("(2 + 3) * 4        = ", resultado2)
        escreva("10 - 2 * 3 + 1     = ", resultado3)
        escreva("(10 - 2) * (3 + 1) = ", resultado4)
        escreva("100 / 5 * 2        = ", resultado5)
        escreva()

        // ─────────────────────────────────────────────
        // OPERADORES DE ATRIBUICAO COMPOSTOS
        // ─────────────────────────────────────────────
        escreva("=== ATRIBUICAO COMPOSTA ===")

        inteiro numero = 10
        escreva("Valor inicial: ", numero)

        numero += 5     // numero = numero + 5 = 15
        escreva("Apos += 5:  ", numero)

        numero -= 3     // numero = numero - 3 = 12
        escreva("Apos -= 3:  ", numero)

        numero *= 2     // numero = numero * 2 = 24
        escreva("Apos *= 2:  ", numero)

        numero /= 4     // numero = numero / 4 = 6
        escreva("Apos /= 4:  ", numero)

        numero %= 4     // numero = numero % 4 = 2
        escreva("Apos %= 4:  ", numero)
        escreva()

        // ─────────────────────────────────────────────
        // INCREMENTO E DECREMENTO
        // Muito usado em loops e estruturas de repeticao
        // ─────────────────────────────────────────────
        escreva("=== INCREMENTO E DECREMENTO ===")

        inteiro contador = 0
        escreva("Contador inicial: ", contador)

        contador++
        escreva("Apos ++: ", contador)   // 1

        contador++
        escreva("Apos ++: ", contador)   // 2

        contador++
        escreva("Apos ++: ", contador)   // 3

        contador--
        escreva("Apos --: ", contador)   // 2
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO PRATICO: Calculando a media de notas
        // ─────────────────────────────────────────────
        escreva("=== EXEMPLO PRATICO: MEDIA DE NOTAS ===")

        real nota1 = 7.5
        real nota2 = 8.0
        real nota3 = 6.5
        real nota4 = 9.0

        real soma = nota1 + nota2 + nota3 + nota4
        real media = soma / 4.0

        escreva("Nota 1: ", nota1)
        escreva("Nota 2: ", nota2)
        escreva("Nota 3: ", nota3)
        escreva("Nota 4: ", nota4)
        escreva("Soma:   ", soma)
        escreva("Media:  ", media)
        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO PRATICO: Conversao de temperatura
        // Celsius para Fahrenheit: F = (C * 9/5) + 32
        // ─────────────────────────────────────────────
        escreva("=== CONVERSAO DE TEMPERATURA ===")

        real celsius = 25.0
        real fahrenheit = (celsius * 9.0 / 5.0) + 32.0

        escreva(celsius, "°C = ", fahrenheit, "°F")

        celsius = 100.0
        fahrenheit = (celsius * 9.0 / 5.0) + 32.0
        escreva(celsius, "°C = ", fahrenheit, "°F")

        celsius = 0.0
        fahrenheit = (celsius * 9.0 / 5.0) + 32.0
        escreva(celsius, "°C = ", fahrenheit, "°F")
    }
}
