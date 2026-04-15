programa {
    funcao inicio() {

        // ════════════════════════════════════════════════════════════════
        //  BANCO CESURG — Solução de Referência (Gabarito)
        //  Conceitos: variáveis, condicionais, escolha, enquanto, para, vetores
        // ════════════════════════════════════════════════════════════════

        // ── VETORES DE CONTAS (máx. 10) ──────────────────────────────────
        cadeia  nomes[10]
        real    saldos[10]
        inteiro totalContas = 0

        // ── VETORES DE EXTRATO (máx. 20 transações) ──────────────────────
        cadeia  extratoTipo[20]
        cadeia  extratoTitular[20]
        real    extratoValor[20]
        real    extratoSaldoPos[20]
        inteiro totalTransacoes = 0

        // ── VARIÁVEIS DE TRABALHO ─────────────────────────────────────────
        inteiro opcao = -1
        inteiro numConta
        inteiro idx
        cadeia  novoNome
        real    valor

        // ── VARIÁVEIS DO RANKING ──────────────────────────────────────────
        real    rankSaldos[10]
        cadeia  rankNomes[10]
        inteiro idxMax
        real    tmpSaldo
        cadeia  tmpNome
        inteiro exibir

        // ════════════════════════════════════════════════════════════════
        //  MENU PRINCIPAL — laço enquanto mantém o sistema rodando
        // ════════════════════════════════════════════════════════════════
        enquanto (opcao != 0) {

            escreval("")
            escreval("╔══════════════════════════════╗")
            escreval("║        BANCO  CESURG         ║")
            escreval("╠══════════════════════════════╣")
            escreval("║  [1] Abrir conta             ║")
            escreval("║  [2] Depositar               ║")
            escreval("║  [3] Sacar                   ║")
            escreval("║  [4] Ver saldo               ║")
            escreval("║  [5] Extrato geral           ║")
            escreval("║  [6] Ranking Top 5           ║")
            escreval("║  [0] Sair                    ║")
            escreval("╚══════════════════════════════╝")
            escreva("  Escolha uma opção: ")
            leia(opcao)

            escolha (opcao) {

                // ── [1] ABRIR CONTA ─────────────────────────────────────
                caso 1:
                    se (totalContas >= 10) {
                        escreval("[ERRO] Limite de 10 contas atingido!")
                    } senao {
                        escreva("Nome do titular: ")
                        leia(novoNome)

                        // Valida depósito mínimo com enquanto
                        valor = 0.0
                        enquanto (valor < 50.0) {
                            escreva("Depósito inicial (mín. R$ 50,00): R$ ")
                            leia(valor)
                            se (valor < 50.0) {
                                escreval("[ERRO] O depósito mínimo é R$ 50,00!")
                            }
                        }

                        // Armazena nos vetores
                        nomes[totalContas]  = novoNome
                        saldos[totalContas] = valor

                        // Registra no extrato
                        se (totalTransacoes < 20) {
                            extratoTipo[totalTransacoes]     = "ABERTURA"
                            extratoTitular[totalTransacoes]  = novoNome
                            extratoValor[totalTransacoes]    = valor
                            extratoSaldoPos[totalTransacoes] = valor
                            totalTransacoes = totalTransacoes + 1
                        }

                        totalContas = totalContas + 1
                        escreval("[OK] Conta número ", totalContas, " aberta para ", novoNome, "!")
                    }
                pare

                // ── [2] DEPOSITAR ───────────────────────────────────────
                caso 2:
                    se (totalContas == 0) {
                        escreval("[ERRO] Nenhuma conta cadastrada!")
                    } senao {
                        escreva("Número da conta (1 a ", totalContas, "): ")
                        leia(numConta)

                        se (numConta < 1 ou numConta > totalContas) {
                            escreval("[ERRO] Conta inválida!")
                        } senao {
                            idx = numConta - 1

                            // Valida valor positivo
                            valor = 0.0
                            enquanto (valor <= 0.0) {
                                escreva("Valor do depósito: R$ ")
                                leia(valor)
                                se (valor <= 0.0) {
                                    escreval("[ERRO] O valor deve ser positivo!")
                                }
                            }

                            saldos[idx] = saldos[idx] + valor

                            se (totalTransacoes < 20) {
                                extratoTipo[totalTransacoes]     = "DEPOSITO"
                                extratoTitular[totalTransacoes]  = nomes[idx]
                                extratoValor[totalTransacoes]    = valor
                                extratoSaldoPos[totalTransacoes] = saldos[idx]
                                totalTransacoes = totalTransacoes + 1
                            }

                            escreval("[OK] Depósito de R$ ", valor, " efetuado!")
                            escreval("     Novo saldo: R$ ", saldos[idx])
                        }
                    }
                pare

                // ── [3] SACAR ───────────────────────────────────────────
                caso 3:
                    se (totalContas == 0) {
                        escreval("[ERRO] Nenhuma conta cadastrada!")
                    } senao {
                        escreva("Número da conta (1 a ", totalContas, "): ")
                        leia(numConta)

                        se (numConta < 1 ou numConta > totalContas) {
                            escreval("[ERRO] Conta inválida!")
                        } senao {
                            idx = numConta - 1
                            escreval("Saldo disponível: R$ ", saldos[idx])
                            escreva("Valor do saque:   R$ ")
                            leia(valor)

                            // Valida: positivo E com saldo suficiente
                            se (valor <= 0.0) {
                                escreval("[ERRO] O valor deve ser positivo!")
                            } senao se (valor > saldos[idx]) {
                                escreval("[ERRO] Saldo insuficiente! Saldo: R$ ", saldos[idx])
                            } senao {
                                saldos[idx] = saldos[idx] - valor

                                se (totalTransacoes < 20) {
                                    extratoTipo[totalTransacoes]     = "SAQUE"
                                    extratoTitular[totalTransacoes]  = nomes[idx]
                                    extratoValor[totalTransacoes]    = valor
                                    extratoSaldoPos[totalTransacoes] = saldos[idx]
                                    totalTransacoes = totalTransacoes + 1
                                }

                                escreval("[OK] Saque de R$ ", valor, " efetuado!")
                                escreval("     Saldo restante: R$ ", saldos[idx])
                            }
                        }
                    }
                pare

                // ── [4] VER SALDO ───────────────────────────────────────
                caso 4:
                    se (totalContas == 0) {
                        escreval("[ERRO] Nenhuma conta cadastrada!")
                    } senao {
                        escreva("Número da conta (1 a ", totalContas, "): ")
                        leia(numConta)

                        se (numConta < 1 ou numConta > totalContas) {
                            escreval("[ERRO] Conta inválida!")
                        } senao {
                            idx = numConta - 1
                            escreval("━━━━━━━━━━━━━━━━━━━━━━━━━━")
                            escreval("  Conta:   ", numConta)
                            escreval("  Titular: ", nomes[idx])
                            escreval("  Saldo:   R$ ", saldos[idx])
                            escreval("━━━━━━━━━━━━━━━━━━━━━━━━━━")
                        }
                    }
                pare

                // ── [5] EXTRATO GERAL ───────────────────────────────────
                caso 5:
                    se (totalTransacoes == 0) {
                        escreval("Nenhuma transação registrada ainda.")
                    } senao {
                        escreval("━━━━━━━ EXTRATO GERAL ━━━━━━━")
                        para (inteiro i = 0; i < totalTransacoes; i++) {
                            escreva(i + 1, ". [", extratoTipo[i], "] ", extratoTitular[i], " | ")
                            se (extratoTipo[i] == "SAQUE") {
                                escreva("-R$ ")
                            } senao {
                                escreva("+R$ ")
                            }
                            escreval(extratoValor[i], " | Saldo: R$ ", extratoSaldoPos[i])
                        }
                        escreval("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
                    }
                pare

                // ── [6] RANKING TOP 5 ───────────────────────────────────
                caso 6:
                    se (totalContas == 0) {
                        escreval("[ERRO] Nenhuma conta cadastrada!")
                    } senao {
                        // Copia os dados para não modificar os vetores originais
                        para (inteiro i = 0; i < totalContas; i++) {
                            rankSaldos[i] = saldos[i]
                            rankNomes[i]  = nomes[i]
                        }

                        // Ordenação por Seleção (decrescente — maior saldo primeiro)
                        para (inteiro i = 0; i < totalContas - 1; i++) {
                            idxMax = i
                            para (inteiro j = i + 1; j < totalContas; j++) {
                                se (rankSaldos[j] > rankSaldos[idxMax]) {
                                    idxMax = j
                                }
                            }
                            // Troca i com idxMax
                            tmpSaldo           = rankSaldos[i]
                            rankSaldos[i]      = rankSaldos[idxMax]
                            rankSaldos[idxMax] = tmpSaldo

                            tmpNome           = rankNomes[i]
                            rankNomes[i]      = rankNomes[idxMax]
                            rankNomes[idxMax] = tmpNome
                        }

                        // Exibe até 5 posições (ou menos se houver poucas contas)
                        exibir = totalContas
                        se (exibir > 5) {
                            exibir = 5
                        }

                        escreval("━━━━━━ RANKING TOP 5 ━━━━━━━")
                        para (inteiro i = 0; i < exibir; i++) {
                            se (i == 0) {
                                escreva("  🥇 1o lugar: ")
                            } senao se (i == 1) {
                                escreva("  🥈 2o lugar: ")
                            } senao se (i == 2) {
                                escreva("  🥉 3o lugar: ")
                            } senao {
                                escreva("  ", i + 1, "o lugar: ")
                            }
                            escreval(rankNomes[i], " — R$ ", rankSaldos[i])
                        }
                        escreval("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
                    }
                pare

                // ── [0] SAIR ────────────────────────────────────────────
                caso 0:
                    escreval("")
                    escreval("Obrigado por usar o Banco CESURG. Até logo!")
                pare

                padrao:
                    escreval("[ERRO] Opção inválida! Digite um número de 0 a 6.")
                pare
            }
        }

    }
}
