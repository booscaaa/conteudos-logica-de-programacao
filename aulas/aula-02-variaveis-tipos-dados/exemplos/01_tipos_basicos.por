/*
 * Variaveis e Tipos de Dados
 * Exemplo 01: Tipos Basicos
 *
 * Este programa demonstra os 5 tipos de dados do Portugol Studio:
 *   - inteiro
 *   - real
 *   - caracter
 *   - cadeia
 *   - logico
 */

programa {
    funcao inicio() {
        // ─────────────────────────────────────────────
        // TIPO: inteiro
        // Armazena numeros inteiros (sem casas decimais)
        // ─────────────────────────────────────────────
        inteiro idade = 20
        inteiro ano_nascimento = 2004
        inteiro temperatura_negativa = -5
        inteiro populacao = 215000000

        escreva("=== TIPO: inteiro ===")
        escreva("Idade: ", idade)
        escreva("Ano de nascimento: ", ano_nascimento)
        escreva("Temperatura negativa: ", temperatura_negativa)
        escreva("Populacao do Brasil: ", populacao)
        escreva()

        // ─────────────────────────────────────────────
        // TIPO: real
        // Armazena numeros com casas decimais
        // O separador decimal e o PONTO, nao a virgula!
        // ─────────────────────────────────────────────
        real altura = 1.75
        real peso = 70.5
        real preco = 19.99
        real pi = 3.14159
        real temperatura_real = -2.8

        escreva("=== TIPO: real ===")
        escreva("Altura: ", altura, " metros")
        escreva("Peso: ", peso, " kg")
        escreva("Preco: R$ ", preco)
        escreva("Pi: ", pi)
        escreva("Temperatura: ", temperatura_real, " graus")
        escreva()

        // ─────────────────────────────────────────────
        // TIPO: caracter
        // Armazena UM unico caractere entre aspas simples
        // ─────────────────────────────────────────────
        caracter inicial = 'A'
        caracter digito = '9'
        caracter espaco = ' '
        caracter simbolo = '!'

        escreva("=== TIPO: caracter ===")
        escreva("Inicial do nome: ", inicial)
        escreva("Digito: ", digito)
        escreva("Simbolo: ", simbolo)
        escreva()

        // ─────────────────────────────────────────────
        // TIPO: cadeia
        // Armazena texto (sequencia de caracteres)
        // Sempre entre aspas duplas
        // ─────────────────────────────────────────────
        cadeia nome = "Ana Silva"
        cadeia cidade = "Sao Paulo"
        cadeia linguagem = "Portugol Studio"
        cadeia frase = "Ola, mundo!"
        cadeia texto_vazio = ""

        escreva("=== TIPO: cadeia ===")
        escreva("Nome: ", nome)
        escreva("Cidade: ", cidade)
        escreva("Linguagem: ", linguagem)
        escreva("Frase: ", frase)
        escreva("Texto vazio: '", texto_vazio, "'")
        escreva()

        // ─────────────────────────────────────────────
        // TIPO: logico
        // Armazena apenas: verdadeiro ou falso
        // Baseado na Algebra Booleana de George Boole
        // ─────────────────────────────────────────────
        logico aprovado = verdadeiro
        logico reprovado = falso
        logico maior_de_idade = verdadeiro
        logico tem_desconto = falso

        escreva("=== TIPO: logico ===")
        escreva("Aprovado: ", aprovado)
        escreva("Reprovado: ", reprovado)
        escreva("Maior de idade: ", maior_de_idade)
        escreva("Tem desconto: ", tem_desconto)
        escreva()

        // ─────────────────────────────────────────────
        // VARIAVEIS SEM VALOR INICIAL
        // Voce pode declarar sem inicializar e atribuir depois
        // ─────────────────────────────────────────────
        inteiro numero
        cadeia palavra

        numero = 42
        palavra = "Portugol"

        escreva("=== ATRIBUICAO POSTERIOR ===")
        escreva("Numero: ", numero)
        escreva("Palavra: ", palavra)
        escreva()

        // ─────────────────────────────────────────────
        // MULTIPLAS VARIAVEIS NA MESMA LINHA
        // ─────────────────────────────────────────────
        inteiro x = 1, y = 2, z = 3

        escreva("=== MULTIPLAS VARIAVEIS ===")
        escreva("x = ", x, ", y = ", y, ", z = ", z)
    }
}
