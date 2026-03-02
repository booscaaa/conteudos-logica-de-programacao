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
        escreva("╔══════════════════════════════════╗")
        escreva("║  CLASSIFICADOR DE NOTAS           ║")
        escreva("╚══════════════════════════════════╝")

        inteiro nota
        escreva("Digite a nota (0 a 100): ")
        leia(nota)

        se (nota >= 90) {
            escreva("Conceito: A — Excelente!")
        } senao se (nota >= 75) {
            escreva("Conceito: B — Muito bom!")
        } senao se (nota >= 60) {
            escreva("Conceito: C — Bom.")
        } senao se (nota >= 50) {
            escreva("Conceito: D — Regular.")
        } senao se (nota >= 0) {
            escreva("Conceito: F — Reprovado.")
        } senao {
            escreva("Nota invalida! Informe um valor entre 0 e 100.")
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 2: Faixa etaria
        // ─────────────────────────────────────────────
        escreva("=== FAIXA ETARIA ===")

        inteiro idade
        escreva("Digite a idade: ")
        leia(idade)

        se (idade < 0) {
            escreva("Idade invalida!")
        } senao se (idade <= 11) {
            escreva("Classificacao: Crianca")
            escreva("Dica: Cuide bem da sua infancia!")
        } senao se (idade <= 17) {
            escreva("Classificacao: Adolescente")
            escreva("Dica: Estude muito!")
        } senao se (idade <= 59) {
            escreva("Classificacao: Adulto")
            escreva("Informacao: Voto obrigatorio a partir dos 18 anos.")
        } senao {
            escreva("Classificacao: Idoso")
            escreva("Dica: Voce tem direito a prioridade em filas!")
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 3: Classificacao do IMC
        // IMC = peso / (altura * altura)
        // ─────────────────────────────────────────────
        escreva("=== CLASSIFICADOR DE IMC ===")
        escreva("IMC = peso / (altura * altura)")
        escreva()

        real peso, altura

        escreva("Peso em kg (ex: 75.5): ")
        leia(peso)

        escreva("Altura em metros (ex: 1.72): ")
        leia(altura)

        real imc = peso / (altura * altura)

        // Exibe com duas casas decimais usando divisao por inteiro
        escreva("Seu IMC: ", imc)
        escreva()

        escreva("Classificacao: ")

        se (imc < 18.5) {
            escreva("Abaixo do peso")
        } senao se (imc < 25.0) {
            escreva("Peso normal")
            escreva("Parabens! Voce esta dentro do peso ideal.")
        } senao se (imc < 30.0) {
            escreva("Sobrepeso")
            escreva("Atencao: considere habitos mais saudaveis.")
        } senao se (imc < 35.0) {
            escreva("Obesidade grau I")
        } senao se (imc < 40.0) {
            escreva("Obesidade grau II")
        } senao {
            escreva("Obesidade grau III")
            escreva("Recomendacao: procure acompanhamento medico.")
        }

        escreva()

        // ─────────────────────────────────────────────
        // EXEMPLO 4: Faixa de velocidade e multa
        // ─────────────────────────────────────────────
        escreva("=== VERIFICADOR DE VELOCIDADE ===")
        escreva("Limite da via: 80 km/h")
        escreva()

        real velocidade
        real multa
        escreva("Velocidade do veiculo (km/h): ")
        leia(velocidade)

        se (velocidade < 0.0) {
            escreva("Velocidade invalida!")
        } senao se (velocidade <= 80.0) {
            escreva("Status: Dentro do limite. Dirija com seguranca!")
        } senao se (velocidade <= 100.0) {
            multa = 130.16
            escreva("Status: INFRACAO LEVE")
            escreva("Multa: R$ ", multa)
            escreva("Pontos na CNH: 3")
        } senao se (velocidade <= 120.0) {
            multa = 195.23
            escreva("Status: INFRACAO MEDIA")
            escreva("Multa: R$ ", multa)
            escreva("Pontos na CNH: 5")
        } senao {
            multa = 293.47
            escreva("Status: INFRACAO GRAVE")
            escreva("Multa: R$ ", multa)
            escreva("Pontos na CNH: 7 + possibilidade de suspensao")
        }
    }
}
