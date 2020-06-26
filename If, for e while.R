# If, for e while

# se algo é verdade faça isso

if(5 == 5) 6 + 6

# se não

if(5 == 6) 6 + 6 else "Condição não atendida"

# melhores práticas

if(5 == 5){
  6 + 6
}else{
  "Condição não atendida"
}

# exemplo

idades <- c(25, 30)
nomes <- c("Joao", "Caina")
df <- data.frame(nomes, idades)

if (df$idades[df$nomes == "Joao"] > df$idades[df$nomes == "Caina"]){
  "Mais velho: Joao"
}else{
  "Mais velhor: Caina"
}

idade <- c(25,30,24,29,31,12)
nomes <- c("João", "Caina", "Maria", "Leo", "Lia", "Enzo")
df <- data.frame(nomes, idades)

# para cada posição faça isso

for(i in idade){
  print(i)
}

# exemplo

v <- 0

for(i in df$idades){
  if (i > v){v <- i}
}
df$nomes[df$idades == v]

# enquanto é verdade faça isso

x <- 0

while(x < 10){
  print(x)
  x <- x+1
}

# exemplo: não permitir que as somas das idades seja maior que 100
x <- 0
cont <- 0
idades100 <- 0

while(x < 100){
  cont <- cont+1
  idades100[cont] <- idades[cont]
  x <- x+idades[cont]
}

#+idades[cont+1]
idades
idades100
sum(idades100)