# Funções: Fazem parte de um pacote
# Pacotes contém muitas funções e precisam estar instalados
# Não sendo um pacote padrão ele precisa ser chamado

# declarando variáveis a e b

a <- "Maxuel"
b <- "Antenor"

# definindo a função c com dois argumentos

c <- c(a,b)
c

# ajuda sobre a função

?c

# instanciando a função com valores de texto

c <- c("Maxuel", "Antenor")
c

# instanciando a função com valores numéricos

a <- c(10,5,15,20)
a

?summary
summary(a)
summary(b)

# função de um pacote não padrão

?str_c

# instalando a biblioteca 'stringr'

install.packages("stringr")

# carregando a biblioteca 'stringr'

library(stringr)

?str_c

nome <- "João"
sobrenome <- "Silva"

# declarando a função nomeCompleto e exibindo

nomeCompleto <- str_c(nome, sobrenome)
nomeCompleto

# declarando a função nomeCompleto e exibindo com espaço

nomeCompleto <- str_c(nome," ", sobrenome)
nomeCompleto
