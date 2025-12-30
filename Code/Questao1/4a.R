#Parametros
p <- 0.7
n <- 50

#Calculo
s <- 1 - pbinom(19, size = n, prob = p)
#A funcao pbinom permite calcular a probabilidade cumulativa de P(X=0) ate P(X=19) diretamente
s
