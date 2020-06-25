# Definir área de trabalho

setwd("C:/Users/morph/Desktop")

# lendo arquivo csv

df <- read.csv("data.csv")

# Analisando o dataframe

View(df)

# tipos de dados
str(df)
summary(df)

# selecionando colunas

df
df[1]
df$date

Col1 <- df[2]
Col2 <- df$X1..open

class(df$X1..open)
class(Col1)
class(Col2)

# Modificando o df

# Excluindo coluna


#df$X5..volume <- NULL

# Alterando o tipo da coluna dentro do df

df$X5..volume
summary(df$X5..volume)
df$X5..volume <- as.factor(df$X5..volume)
df$X5..volume
summary(df$X5..volume)

# Criando uma nova coluna dentro do df

df$Nova <- "a"
class(df$Nova)
df$Nova <- c(2,5,10)
df$Nova <- c(2,5,10, NA, NA, NA, NA, NA, NA, NA)
df$Nova <- NULL
df$Nova <- NA
df$Nova[1:3] <- c(2,5,10)
class(df$Nova)
