# OBJETIVO: Aplicar Machine Learning no R

# Como? Atrav�s de um exemplo simples.

setwd("C:/Users/morph/Desktop")

# Base de dados
df <- read.csv("FipePrevAjustada.csv",header=TRUE,encoding="UTF-8")
view(df)

set.seed(100)

# selecionar dados de treino e teste de forma rand�mica

linhas <- sample(1:length(df$Marca), length(df$Marca)*0.7)

# dados de treino - 70%

treino <- df[linhas,]

# dados de teste - 30%

teste <- df[-linhas,]

# criando o modelo

library(rpart)
modelo <- rpart(Pre�o ~ ., data=treino,control=rpart.control(cp=0))

# Realizar previs�es 

teste$Previs�o <- predict(modelo, teste)
view(teste)

# Analisar resultados

teste$P <- abs(round(teste$Previs�o/teste$Pre�o,4)-1)
R_1 <- summary(teste$P)
R_1

# Analisar distribui��o dos pre�os excluindo os 10% mais caros

hist(df$Pre�o[df$Pre�o<quantile(df$Pre�o, 0.90)], breaks=10, labels=T)

R_Final_1 <- summary(teste$P[teste$Pre�o>10000 & teste$Pre�o<70000])
R_1
R_Final_1

