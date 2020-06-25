# Criando uma variável

vogais <- c("a", "e", "i", "o", "u")

# Acessar o conteúdo que está no índice 3

vogais[3]

# Acessar tudo menos o índice 3

vogais[-3]

# Dados entre a posição 3 e 5

vogais[3:5]

# Dados considerando o comprimento

length(vogais)

vogais[3:length(vogais)]
vogais[(length(vogais)-2):length(vogais)]

# Dados considerando outras variáveis

a <- 3
b <- 5
vogais[a:b]

# Acessar através de condições

vogais[vogais == "e"]
vogais[vogais != "e"]

a <- c(1,2,3,4,5)
a[a>2]
a[a>=2]

# trabalhando com DataFrames

setwd("C:/Users/morph/Desktop")
df <- read.csv("data.csv")
df[1]
df[1,]
#df[linha, coluna]

df[1:6]
df[-4]

df[1,1]
df[1,1:6]
df[1,-4]

# modificando o df

df <- df[c(-3,-4,-5,-6)]

# filtrando as variáveis

df[1,1]
df$X5..volume[1]
df$X5..volume[2:4]
df[df$X5..volume == 1,]

# modificando o df

df <- df[df$X5..volume == 1,]

# df x df1

df1 <- read.csv("data.csv")
View(df1)
view(df)
