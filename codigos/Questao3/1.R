random_box_muller <- function(n) {
    # (a) Gere duas variáveis aleatórias uniformes independentes:
    U1 <- runif(n)
    U2 <- runif(n)
    
    # (b) Calcule dois valores normais padrão usando as fórmulas de Box-Muller
    Z1 <- sqrt(-2 * log(U1)) * cos(2 * pi * U2)
    Z2 <- sqrt(-2 * log(U1)) * sin(2 * pi * U2)

    Z <- c(Z1, Z2)

    # (c) Converta cada valor normal padrão para a distribuição de temperatura da CPU
    T <- 62 + (3.5 * Z)

    return(T)
}

if (sys.nframe() == 0) {
    amostras <- random_box_muller(5)
    print(amostras)
}