#Parametros
lamb <- 1
k <- 0:20   

#Funcoes
pmf <- dpois(k, lambda = lamb) #pmf de poisson(1)

P_ganhar <- sum(1 / (k + 1) * pmf) # 1/(W + 1)

P_ganhar