#Parametros
p <- 10^-7
n <- 10^7

#Calculo
e_exato <- p*n
variancia_exato <- p*n*(1-p)

lambda <- n*p
e_aprox <- lambda
variancia_aprox <- lambda

e_exato 
variancia_exato

e_aprox
variancia_aprox