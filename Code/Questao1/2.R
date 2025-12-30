#Parametros
p <- 0.7
n <- 50

#Plot
x <- 0:50

#PMF
plot(x, dbinom(x, size= n, prob= p), type='h',
      ylab = 'PMF(X)',
      xlab = 'X')

#CDF
plot(x, pbinom(x, size= n, prob= p), type='h',
      ylab = 'CDF(X)',
      xlab = 'X')