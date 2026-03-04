programa {
    funcao inicio() {
        // ─── Expressões booleanas compostas ───────────────────────────────────
        escreva("=== Expressões Booleanas Compostas ===\n\n")

        logico A = verdadeiro
        logico B = falso
        logico C = verdadeiro

        escreva("Valores: A=", A, "  B=", B, "  C=", C, "\n\n")

        // Expressões passo a passo
        logico expr1 = A e B
        logico expr2 = A ou B
        logico expr3 = (A e B) ou C
        logico expr4 = A e (B ou C)
        logico expr5 = (nao B) e C
        logico expr6 = nao (A ou B)

        escreva("A e B             = ", expr1, "\n")
        escreva("A ou B            = ", expr2, "\n")
        escreva("(A e B) ou C      = ", expr3, "\n")
        escreva("A e (B ou C)      = ", expr4, "\n")
        escreva("(nao B) e C       = ", expr5, "\n")
        escreva("nao (A ou B)      = ", expr6, "\n\n")

        // ─── Sistema de login seguro ──────────────────────────────────────────
        escreva("=== Sistema de Login ===\n")
        cadeia usuario
        cadeia senha
        logico contaAtiva

        escreva("Usuário: ")
        leia(usuario)
        escreva("Senha: ")
        leia(senha)
        escreva("Conta ativa? (verdadeiro/falso): ")
        leia(contaAtiva)

        logico usuarioOk = (usuario == "admin")
        logico senhaOk   = (senha == "1234")
        logico podeLogar = usuarioOk e senhaOk e contaAtiva

        escreva("\n--- Resultado ---\n")
        escreva("Usuário correto: ", usuarioOk, "\n")
        escreva("Senha correta:   ", senhaOk,   "\n")
        escreva("Conta ativa:     ", contaAtiva, "\n")

        se (podeLogar) {
            escreva("Acesso CONCEDIDO! Bem-vindo, ", usuario, "!\n\n")
        } senao se (nao usuarioOk) {
            escreva("Usuário não encontrado.\n\n")
        } senao se (nao senhaOk) {
            escreva("Senha incorreta.\n\n")
        } senao {
            escreva("Conta desativada. Contate o suporte.\n\n")
        }

        // ─── Verificação de elegibilidade para votação ────────────────────────
        escreva("=== Verificação de Voto ===\n")
        inteiro anoNascimento
        inteiro anoAtual

        escreva("Ano de nascimento: ")
        leia(anoNascimento)
        escreva("Ano atual: ")
        leia(anoAtual)

        inteiro idadeVoto = anoAtual - anoNascimento

        logico podeVotar    = (idadeVoto >= 16)
        logico votoObrigat  = (idadeVoto >= 18) e (idadeVoto <= 70)
        logico votoFacult   = (idadeVoto >= 16 e idadeVoto < 18) ou (idadeVoto > 70)

        escreva("\nIdade calculada: ", idadeVoto, " anos\n")
        se (nao podeVotar) {
            escreva("Não pode votar (menor de 16 anos).\n")
        } senao se (votoObrigat) {
            escreva("VOTO OBRIGATÓRIO (entre 18 e 70 anos).\n")
        } senao se (votoFacult) {
            escreva("Voto FACULTATIVO (16-17 anos ou acima de 70).\n")
        }

        // ─── XOR (OU Exclusivo) manual ────────────────────────────────────────
        escreva("\n=== XOR — Ou Exclusivo ===\n")
        escreva("Verdadeiro quando os valores são DIFERENTES.\n\n")

        logico xA
        logico xB

        escreva("Valor de A (verdadeiro/falso): ")
        leia(xA)
        escreva("Valor de B (verdadeiro/falso): ")
        leia(xB)

        // XOR = (A ou B) e (nao (A e B))
        logico xor = (xA ou xB) e (nao (xA e xB))
        escreva("\nA XOR B = ", xor, "\n")
        escreva("(São diferentes: ", xA != xB, ")\n")
    }
}
