# OBJETIVO: Aplicar Machine Learning no R

# Como? Através de um exemplo simples.

setwd("C:/Users/morph/Desktop")

# Base de dados
df <- read.csv("FipePrevAjustada.csv",header=TRUE,encoding="UTF-8")
view(df)

set.seed(100)

# selecionar dados de treino e teste de forma randômica

linhas <- sample(1:length(df$Marca), length(df$Marca)*0.7)

# dados de treino - 70%

treino <- df[linhas,]

# dados de teste - 30%

teste <- df[-linhas,]

# criando o modelo

library(rpart)
modelo <- rpart(Preço ~ ., data=treino,control=rpart.control(cp=0))

# Realizar previsões 

teste$Previsão <- predict(modelo, teste)
view(teste)

# Analisar resultados

teste$P <- abs(round(teste$Previsão/teste$Preço,4)-1)
R_1 <- summary(teste$P)
R_1

# Analisar distribuição dos preços excluindo os 10% mais caros

hist(df$Preço[df$Preço<quantile(df$Preço, 0.90)], breaks=10, labels=T)

R_Final_1 <- summary(teste$P[teste$Preço>10000 & teste$Preço<70000])
R_1
R_Final_1

