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

        escreval("=== TIPO: inteiro ===")
        escreval("Idade: ", idade)
        escreval("Ano de nascimento: ", ano_nascimento)
        escreval("Temperatura negativa: ", temperatura_negativa)
        escreval("Populacao do Brasil: ", populacao)
        escreval()

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

        escreval("=== TIPO: real ===")
        escreval("Altura: ", altura, " metros")
        escreval("Peso: ", peso, " kg")
        escreval("Preco: R$ ", preco)
        escreval("Pi: ", pi)
        escreval("Temperatura: ", temperatura_real, " graus")
        escreval()

        // ─────────────────────────────────────────────
        // TIPO: caracter
        // Armazena UM unico caractere entre aspas simples
        // ─────────────────────────────────────────────
        caracter inicial = 'A'
        caracter digito = '9'
        caracter espaco = ' '
        caracter simbolo = '!'

        escreval("=== TIPO: caracter ===")
        escreval("Inicial do nome: ", inicial)
        escreval("Digito: ", digito)
        escreval("Simbolo: ", simbolo)
        escreval()

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

        escreval("=== TIPO: cadeia ===")
        escreval("Nome: ", nome)
        escreval("Cidade: ", cidade)
        escreval("Linguagem: ", linguagem)
        escreval("Frase: ", frase)
        escreval("Texto vazio: '", texto_vazio, "'")
        escreval()

        // ─────────────────────────────────────────────
        // TIPO: logico
        // Armazena apenas: verdadeiro ou falso
        // Baseado na Algebra Booleana de George Boole
        // ─────────────────────────────────────────────
        logico aprovado = verdadeiro
        logico reprovado = falso
        logico maior_de_idade = verdadeiro
        logico tem_desconto = falso

        escreval("=== TIPO: logico ===")
        escreval("Aprovado: ", aprovado)
        escreval("Reprovado: ", reprovado)
        escreval("Maior de idade: ", maior_de_idade)
        escreval("Tem desconto: ", tem_desconto)
        escreval()

        // ─────────────────────────────────────────────
        // VARIAVEIS SEM VALOR INICIAL
        // Voce pode declarar sem inicializar e atribuir depois
        // ─────────────────────────────────────────────
        inteiro numero
        cadeia palavra

        numero = 42
        palavra = "Portugol"

        escreval("=== ATRIBUICAO POSTERIOR ===")
        escreval("Numero: ", numero)
        escreval("Palavra: ", palavra)
        escreval()

        // ─────────────────────────────────────────────
        // MULTIPLAS VARIAVEIS NA MESMA LINHA
        // ─────────────────────────────────────────────
        inteiro x = 1, y = 2, z = 3

        escreval("=== MULTIPLAS VARIAVEIS ===")
        escreval("x = ", x, ", y = ", y, ", z = ", z)
    }
}
