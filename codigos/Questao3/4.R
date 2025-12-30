source("Questao3/2.R")
pdf("../graficos/Questao3/grafico_questao_3.pdf", width = 12, height = 10)
par(mfrow = c(2, 2))

# (a) Um histograma das temperaturas simuladas da CPU (pode plotar os dois con
# juntos de dados separadamente ou sobrepostos)
# Gráfico 1: Histograma Box-Muller 
hist(amostras_autoral,
     prob = TRUE, 
     breaks = 50,
     main = "(a) Box-Muller",
     xlab = "Temperatura (°C)",
     ylab = "Densidade",
     col = "lightblue",
     border = "white",
     ylim = c(0, 0.12)) 

# Gráfico 2: Histrograma R Nativo 
hist(amostras_nativo,
     prob = TRUE,
     breaks = 50, 
     main = "(a) R Nativo",
     xlab = "Temperatura (°C)",
     ylab = "Densidade",
     col = "lightgreen",
     border = "white",
     ylim = c(0, 0.12))

# (b) A função densidade de probabilidade (PDF) normal teórica (média 62°C, desvio
# padrão 3,5°C) sobreposta ao histograma

# Gráfico 3: Box-Muller + Curva
hist(amostras_autoral,
     prob = TRUE,
     breaks = 50,
     main = "(b) Box-Muller + Teórico",
     xlab = "Temperatura (°C)",
     ylab = "Densidade",
     col = "lightblue",
     border = "white",
     ylim = c(0, 0.12))

curve(dnorm(x, mean = 62, sd = 3.5), 
      add = TRUE, 
      col = "red", 
      lwd = 2)
legend("topright", legend = "Teórico", col = "red", lwd = 2, bty = "n")

# Gráfico 4: R Nativo + Curva
hist(amostras_nativo,
     prob = TRUE,
     breaks = 50,
     main = "(b) R Nativo + Teórico",
     xlab = "Temperatura (°C)",
     ylab = "Densidade",
     col = "lightgreen",
     border = "white",
     ylim = c(0, 0.12))

curve(dnorm(x, mean = 62, sd = 3.5), 
      add = TRUE, 
      col = "red", 
      lwd = 2)
legend("topright", legend = "Teórico", col = "red", lwd = 2, bty = "n")

dev.off()