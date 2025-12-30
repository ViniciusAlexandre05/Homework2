source("1.R")

# 500 pares de numeros aleatórios nos retorna um total de 1000 amostras, utilizando
# a função já implementada no Item 1:
amostras_autoral <- random_box_muller(500)

# Gerando os números aleatoriamente com a função built-in do R:
amostras_nativo <- rnorm(n = 1000, mean = 62, sd = 3.5)

if (sys.nframe() == 0) {
    amostras_autoral
    amostras_nativo
}