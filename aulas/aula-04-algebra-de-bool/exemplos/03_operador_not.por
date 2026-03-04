programa {
    funcao inicio() {
        // ─── Operador NOT (nao) ───────────────────────────────────────────────
        escreva("=== Operador NOT (nao) ===\n")
        escreva("Inverte sempre: verdadeiro vira falso, falso vira verdadeiro.\n\n")

        escreva("nao verdadeiro = ", nao verdadeiro, "\n")  // falso
        escreva("nao falso      = ", nao falso,      "\n\n") // verdadeiro

        // ─── Exemplo NOT real: status de sistemas ─────────────────────────────
        escreva("=== Exemplos com NOT ===\n")

        logico estaFerias   = falso
        logico trabalhando  = nao estaFerias
        escreva("Em férias? ", estaFerias,  "  → Trabalhando? ", trabalhando, "\n")

        logico chuva        = verdadeiro
        logico solAberto    = nao chuva
        escreva("Chuva? ",     chuva,       "  → Sol aberto? ", solAberto,   "\n")

        logico portaLocked  = verdadeiro
        logico podeEntrar   = nao portaLocked
        escreva("Porta trancada? ", portaLocked, " → Pode entrar? ", podeEntrar, "\n\n")

        // ─── NOT com leitura do teclado ───────────────────────────────────────
        escreva("=== NOT com Entrada do Usuário ===\n")
        logico estaLogado
        escreva("Usuário está logado? (verdadeiro/falso): ")
        leia(estaLogado)

        logico estaDeslogado = nao estaLogado
        se (estaDeslogado) {
            escreva("Usuário DESLOGADO. Redirecionar para login.\n")
        } senao {
            escreva("Usuário LOGADO. Acesso permitido.\n")
        }

        // ─── Dupla negação ─────────────────────────────────────────────────────
        escreva("\n=== Dupla Negação ===\n")
        logico ativo = verdadeiro
        logico duplo = nao (nao ativo)   // = verdadeiro (mesma coisa)
        escreva("ativo:           ", ativo, "\n")
        escreva("nao ativo:       ", nao ativo, "\n")
        escreva("nao (nao ativo): ", duplo, "\n\n")

        // ─── NOT combinado com AND e OR ───────────────────────────────────────
        escreva("=== NOT Combinado com AND e OR ===\n")
        logico A = verdadeiro
        logico B = falso
        logico C = verdadeiro

        escreva("A = ", A, "  B = ", B, "  C = ", C, "\n")
        escreva("nao A             = ", nao A,                "\n")
        escreva("nao B             = ", nao B,                "\n")
        escreva("(nao B) e C       = ", (nao B) e C,          "\n")
        escreva("A e (nao B) e C   = ", A e (nao B) e C,      "\n")
        escreva("nao (A e B)       = ", nao (A e B),          "\n")
        escreva("nao (A ou B)      = ", nao (A ou B),         "\n")
    }
}
