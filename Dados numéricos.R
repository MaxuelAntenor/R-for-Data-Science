# Armazenamento numérico

# OBS.: summary é como se fosse o value_counts

salario <- 3450.89
horas <- 220

sm  <- salario/horas
smi <- as.integer(salario/horas)
smi * 5
smr <- round(salario/horas)

numero1 <- salario + horas
numero1

numero2 <- c(salario, horas)
numero2

# Armazenamento de caracteres

Nome_1 <- "Maxuel Antenor Pedro"
Nome_2 <- "Mariane Ferreira de Andrade"
Idade <- "Eduardo tem 25 anos"

Idade <- "25"

Nomes <- Nome_1 + Nome_2
Nomes <- c(Nome_1, Nome_2)

Nomes
Nomes[1]
Nomes[2]


# Armazenamento de fatores

cargaHoraria <- c(220,220,150,100,100)
summary(cargaHoraria)

cargaHoraria <- as.factor(cargaHoraria)
summary(cargaHoraria)

cargaHoraria <- as.factor(c(220,220,150,100,100))
summary(cargaHoraria)
mode(cargaHoraria)
class(cargaHoraria)

# Armazenamento lógico

L1 <- salario > horas
L1

L2 <- salario < horas
L2

Logico <- TRUE
Logico1 <- "TRUE"
Logico2 <- c(1, TRUE, 3)

# Vetores

#Vetor de caracteres

is.vector(Nomes)
mode(Nomes)

# vetor numérico

is.vector(horas)
mode(horas)

# vetor lógico

is.vector(L1)
mode(L1)

# Lista - vetor com tipo de dados heterogeneo

a <- c(1,2,3,4,5)
b <- c(1,"2", 3, 4, 5)
a
b


is.list(a)
is.list(b)

is.vector(a)
is.vector(b)

is.numeric(a)
is.numeric(b)
is.character(b)

b <- list(10, "2", 8)

is.list(b)

is.vector(b)

is.numeric(b)

is.character(b)
mode(b)

str(b)

b + 2
b[[1]] + 2
b[[2]] + 2
mode(b[[2]])
b[[3]] + 2

# matrizes = duas dimensões um tipo de dado

m <- matrix(1:9, nrow = 3)
m
mode(m)
class(m)

m[1.1] <- "a"

mode(m)
m
class(m)
