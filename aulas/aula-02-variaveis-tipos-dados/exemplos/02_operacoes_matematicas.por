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
        escreval("=== OPERACOES BASICAS ===")
        escreval("a = ", a)
        escreval("b = ", b)
        escreval()

        escreval("Adicao:        a + b = ", a + b)
        escreval("Subtracao:     a - b = ", a - b)
        escreval("Multiplicacao: a * b = ", a * b)
        escreval("Divisao:       a / b = ", a / b)
        escreval("Modulo:        a % b = ", a % b)
        escreval()

        // ─────────────────────────────────────────────
        // DIVISAO INTEIRA vs DIVISAO REAL
        // Cuidado! Dividir dois inteiros trunca o resultado!
        // ─────────────────────────────────────────────
        escreval("=== DIVISAO: INTEIRO vs REAL ===")

        inteiro dividendo = 7
        inteiro divisor = 2

        inteiro resultado_inteiro = dividendo / divisor
        real resultado_real = (real) dividendo / divisor

        escreval("7 / 2 (divisao inteira): ", resultado_inteiro)   // 3 (truncado!)
        escreval("7 / 2 (divisao real):    ", resultado_real)       // 3.5
        escreval()

        // Outro exemplo classico:
        real resultado_classico = 1.0 / 3.0
        escreval("1.0 / 3.0 = ", resultado_classico)
        escreval()

        // ─────────────────────────────────────────────
        // MODULO (RESTO DA DIVISAO)
        // Muito util para verificar se um numero e par/impar
        // ─────────────────────────────────────────────
        escreval("=== MODULO (RESTO) ===")
        escreval("10 % 3 = ", 10 % 3)   // 1 (10 = 3*3 + 1)
        escreval("15 % 5 = ", 15 % 5)   // 0 (divisao exata)
        escreval("7 % 2  = ", 7 % 2)    // 1 (numero impar)
        escreval("8 % 2  = ", 8 % 2)    // 0 (numero par)
        escreval("17 % 4 = ", 17 % 4)   // 1 (17 = 4*4 + 1)
        escreval()

        // ─────────────────────────────────────────────
        // PRECEDENCIA DE OPERADORES
        // Mesma ordem da matematica:
        // 1. Parenteses
        // 2. Multiplicacao, Divisao, Modulo
        // 3. Adicao, Subtracao
        // ─────────────────────────────────────────────
        escreval("=== PRECEDENCIA DE OPERADORES ===")

        inteiro resultado1 = 2 + 3 * 4          // = 2 + 12 = 14 (nao 20!)
        inteiro resultado2 = (2 + 3) * 4         // = 5 * 4 = 20
        inteiro resultado3 = 10 - 2 * 3 + 1      // = 10 - 6 + 1 = 5
        inteiro resultado4 = (10 - 2) * (3 + 1)  // = 8 * 4 = 32
        inteiro resultado5 = 100 / 5 * 2          // = 20 * 2 = 40 (esq. para dir.)

        escreval("2 + 3 * 4          = ", resultado1)
        escreval("(2 + 3) * 4        = ", resultado2)
        escreval("10 - 2 * 3 + 1     = ", resultado3)
        escreval("(10 - 2) * (3 + 1) = ", resultado4)
        escreval("100 / 5 * 2        = ", resultado5)
        escreval()

        // ─────────────────────────────────────────────
        // OPERADORES DE ATRIBUICAO COMPOSTOS
        // ─────────────────────────────────────────────
        escreval("=== ATRIBUICAO COMPOSTA ===")

        inteiro numero = 10
        escreval("Valor inicial: ", numero)

        numero += 5     // numero = numero + 5 = 15
        escreval("Apos += 5:  ", numero)

        numero -= 3     // numero = numero - 3 = 12
        escreval("Apos -= 3:  ", numero)

        numero *= 2     // numero = numero * 2 = 24
        escreval("Apos *= 2:  ", numero)

        numero /= 4     // numero = numero / 4 = 6
        escreval("Apos /= 4:  ", numero)

        numero %= 4     // numero = numero % 4 = 2
        escreval("Apos %= 4:  ", numero)
        escreval()

        // ─────────────────────────────────────────────
        // INCREMENTO E DECREMENTO
        // Muito usado em loops e estruturas de repeticao
        // ─────────────────────────────────────────────
        escreval("=== INCREMENTO E DECREMENTO ===")

        inteiro contador = 0
        escreval("Contador inicial: ", contador)

        contador++
        escreval("Apos ++: ", contador)   // 1

        contador++
        escreval("Apos ++: ", contador)   // 2

        contador++
        escreval("Apos ++: ", contador)   // 3

        contador--
        escreval("Apos --: ", contador)   // 2
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO PRATICO: Calculando a media de notas
        // ─────────────────────────────────────────────
        escreval("=== EXEMPLO PRATICO: MEDIA DE NOTAS ===")

        real nota1 = 7.5
        real nota2 = 8.0
        real nota3 = 6.5
        real nota4 = 9.0

        real soma = nota1 + nota2 + nota3 + nota4
        real media = soma / 4.0

        escreval("Nota 1: ", nota1)
        escreval("Nota 2: ", nota2)
        escreval("Nota 3: ", nota3)
        escreval("Nota 4: ", nota4)
        escreval("Soma:   ", soma)
        escreval("Media:  ", media)
        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO PRATICO: Conversao de temperatura
        // Celsius para Fahrenheit: F = (C * 9/5) + 32
        // ─────────────────────────────────────────────
        escreval("=== CONVERSAO DE TEMPERATURA ===")

        real celsius = 25.0
        real fahrenheit = (celsius * 9.0 / 5.0) + 32.0

        escreval(celsius, "°C = ", fahrenheit, "°F")

        celsius = 100.0
        fahrenheit = (celsius * 9.0 / 5.0) + 32.0
        escreval(celsius, "°C = ", fahrenheit, "°F")

        celsius = 0.0
        fahrenheit = (celsius * 9.0 / 5.0) + 32.0
        escreval(celsius, "°C = ", fahrenheit, "°F")
    }
}
