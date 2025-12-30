#Parametros
p <- 10^-7
n <- 10^7

#Plot
x <- 0:10

#PMF
plot(x, dbinom(x, size= n, prob= p), type='h',
      ylab = 'PMF(X) Exata',
      xlab = 'X')

#PMF
plot(x, dpois(x, 1), type='h',
      ylab = 'PMF(X) Aproximada',
      xlab = 'X')