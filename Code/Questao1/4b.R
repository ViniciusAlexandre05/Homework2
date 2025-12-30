#Parametros
p <- 0.7
n <- 50

#Calculo
s <- pbinom(42, size = n, prob = p) - pbinom(30, size = n, prob = p)

s