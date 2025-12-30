#Seed da Simulacao
set.seed(123)

#Parametros
N <- 10^1 #Numero de Simulacoes
n <- 10^7
p <- 10^-7
lambda <- n * p

#Simulacao da binomial
X <- rbinom(N, n, p)

#Probabilidades da Binomial, apenas resultados de 0 a 6, os demais se tornam irrelevantes para a analise
k <- 0:6
p_bin <- table(factor(X[X <= 6], levels = k))
p_bin <- p_bin / sum(p_bin)

#Grafico da Binomial
plot(k, p_bin,
     type = "h",
     lwd = 2,
     col = "blue",
     ylim = c(0, max(p_bin, dpois(k, lambda))),
     xlab = "Vencedores por dia",
     ylab = "Probabilidade",
     yaxt = "n")
axis(2)

# pontos da Poisson
points(k, dpois(k, lambda),
       pch = 19,
       col = "red")