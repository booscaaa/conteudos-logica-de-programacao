/*
 * Estruturas de Fluxo de Controle
 * Exemplo 02: se/senao se/senao
 *
 * Demonstra a cadeia de condicionais para multiplas possibilidades:
 *   - se         → primeira condicao
 *   - senao se   → condicao alternativa (pode repetir varias vezes)
 *   - senao      → caso nenhuma condicao anterior seja verdadeira
 *
 * Exemplos praticos:
 *   - Classificacao de notas por conceito
 *   - Faixa etaria
 *   - IMC
 *   - Faixa de velocidade
 */

programa {
    funcao inicio() {
        // ─────────────────────────────────────────────
        // EXEMPLO 1: Classificacao de notas por conceito
        // A ordem importa: do mais restritivo ao menos restritivo
        // ─────────────────────────────────────────────
        escreval("╔══════════════════════════════════╗")
        escreval("║  CLASSIFICADOR DE NOTAS           ║")
        escreval("╚══════════════════════════════════╝")

        inteiro nota
        escreva("Digite a nota (0 a 100): ")
        leia(nota)

        se (nota >= 90) {
            escreval("Conceito: A — Excelente!")
        } senao se (nota >= 75) {
            escreval("Conceito: B — Muito bom!")
        } senao se (nota >= 60) {
            escreval("Conceito: C — Bom.")
        } senao se (nota >= 50) {
            escreval("Conceito: D — Regular.")
        } senao se (nota >= 0) {
            escreval("Conceito: F — Reprovado.")
        } senao {
            escreval("Nota invalida! Informe um valor entre 0 e 100.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Faixa etaria
        // ─────────────────────────────────────────────
        escreval("=== FAIXA ETARIA ===")

        inteiro idade
        escreva("Digite a idade: ")
        leia(idade)

        se (idade < 0) {
            escreval("Idade invalida!")
        } senao se (idade <= 11) {
            escreval("Classificacao: Crianca")
            escreval("Dica: Cuide bem da sua infancia!")
        } senao se (idade <= 17) {
            escreval("Classificacao: Adolescente")
            escreval("Dica: Estude muito!")
        } senao se (idade <= 59) {
            escreval("Classificacao: Adulto")
            escreval("Informacao: Voto obrigatorio a partir dos 18 anos.")
        } senao {
            escreval("Classificacao: Idoso")
            escreval("Dica: Voce tem direito a prioridade em filas!")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Classificacao do IMC
        // IMC = peso / (altura * altura)
        // ─────────────────────────────────────────────
        escreval("=== CLASSIFICADOR DE IMC ===")
        escreval("IMC = peso / (altura * altura)")
        escreval()

        real peso, altura

        escreva("Peso em kg (ex: 75.5): ")
        leia(peso)

        escreva("Altura em metros (ex: 1.72): ")
        leia(altura)

        real imc = peso / (altura * altura)

        // Exibe com duas casas decimais usando divisao por inteiro
        escreval("Seu IMC: ", imc)
        escreval()

        escreva("Classificacao: ")

        se (imc < 18.5) {
            escreval("Abaixo do peso")
        } senao se (imc < 25.0) {
            escreval("Peso normal")
            escreval("Parabens! Voce esta dentro do peso ideal.")
        } senao se (imc < 30.0) {
            escreval("Sobrepeso")
            escreval("Atencao: considere habitos mais saudaveis.")
        } senao se (imc < 35.0) {
            escreval("Obesidade grau I")
        } senao se (imc < 40.0) {
            escreval("Obesidade grau II")
        } senao {
            escreval("Obesidade grau III")
            escreval("Recomendacao: procure acompanhamento medico.")
        }

        escreval()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Faixa de velocidade e multa
        // ─────────────────────────────────────────────
        escreval("=== VERIFICADOR DE VELOCIDADE ===")
        escreval("Limite da via: 80 km/h")
        escreval()

        real velocidade
        real multa
        escreva("Velocidade do veiculo (km/h): ")
        leia(velocidade)

        se (velocidade < 0.0) {
            escreval("Velocidade invalida!")
        } senao se (velocidade <= 80.0) {
            escreval("Status: Dentro do limite. Dirija com seguranca!")
        } senao se (velocidade <= 100.0) {
            multa = 130.16
            escreval("Status: INFRACAO LEVE")
            escreval("Multa: R$ ", multa)
            escreval("Pontos na CNH: 3")
        } senao se (velocidade <= 120.0) {
            multa = 195.23
            escreval("Status: INFRACAO MEDIA")
            escreval("Multa: R$ ", multa)
            escreval("Pontos na CNH: 5")
        } senao {
            multa = 293.47
            escreval("Status: INFRACAO GRAVE")
            escreval("Multa: R$ ", multa)
            escreval("Pontos na CNH: 7 + possibilidade de suspensao")
        }
    }
}
