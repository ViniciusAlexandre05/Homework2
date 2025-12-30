source("Questao3/2.R")

# (a) Média amostral 
media_autoral <- mean(amostras_autoral)
media_nativo <- mean(amostras_nativo)

# (b) Desvio-padrão amostral 
sd_autoral <- sd(amostras_autoral)
sd_nativo <- sd(amostras_nativo)

# (c) Temperatura mínima e máxima observada
min_max_autoral <- range(amostras_autoral)
min_max_nativo <- range(amostras_nativo)

# (d) Probabilidade teórica e empírica de P(T > 68):
# Teórica: Fórmula matemática
prob_teorica_d <- 1 - pnorm(68, mean = 62, sd = 3.5)

# Empírica: Quantos valores no meu vetor são > 68?
prob_empirica_d <- mean(amostras_autoral > 68) 

# (e) Probabilidade empírica e teórica P(60 < T < 65):
# Teórica
prob_teorica_e <- pnorm(65, 62, 3.5) - pnorm(60, 62, 3.5)

# Empírica: Quantos estão entre 60 e 65?
prob_empirica_e <- mean(amostras_autoral > 60 & amostras_autoral < 65)

# (f) Probabilidade teórica P (T > 75) e verificação de existência
prob_teorica_f <- 1 - pnorm(75, 62, 3.5)

# Algum conjunto contem valores acima de 75?
existe_acima_75 <- any(amostras_autoral > 75)


if (sys.nframe() == 0) {
    # Usando sprintf para formatar bonitinho com 4 casas decimais
    print("------------- Item (a) (Médias) ----------------")
    print(sprintf("Box-Muller: %.4f | Nativo: %.4f", media_autoral, media_nativo))
    
    print("------------- Item (b) (Desvios) ----------------")
    print(sprintf("Box-Muller: %.4f | Nativo: %.4f", sd_autoral, sd_nativo))

    print("------------- Item (c) (Mins e Maxs)----------------")
    print(sprintf("Box-Muller: Min %.4f / Max %.4f", min_max_autoral[1], min_max_autoral[2]))
    print(sprintf("Nativo:     Min %.4f / Max %.4f", min_max_nativo[1], min_max_nativo[2]))
    
    print("------------- Item (d) ----------------")
    print(sprintf("Empírica: %.4f (%.2f%%)", prob_empirica_d, prob_empirica_d*100))
    print(sprintf("Teórica:  %.4f (%.2f%%)", prob_teorica_d, prob_teorica_d*100))

    print("------------- Item (e)----------------")
    print(sprintf("Empírica: %.4f", prob_empirica_e))
    print(sprintf("Teórica:  %.4f", prob_teorica_e))

    print("------------- Item (f) ----------------")
    print(sprintf("Probabilidade Teórica: %.6f", prob_teorica_f))
    if(existe_acima_75){
        print("Algum valor > 75 foi gerado.")
    }else{
        print("Algum valor > 75 não foi gerado.")
    }
}