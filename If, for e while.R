# If, for e while

# se algo � verdade fa�a isso

if(5 == 5) 6 + 6

# se n�o

if(5 == 6) 6 + 6 else "Condi��o n�o atendida"

# melhores pr�ticas

if(5 == 5){
  6 + 6
}else{
  "Condi��o n�o atendida"
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
nomes <- c("Jo�o", "Caina", "Maria", "Leo", "Lia", "Enzo")
df <- data.frame(nomes, idades)

# para cada posi��o fa�a isso

for(i in idade){
  print(i)
}

# exemplo

v <- 0

for(i in df$idades){
  if (i > v){v <- i}
}
df$nomes[df$idades == v]

# enquanto � verdade fa�a isso

x <- 0

while(x < 10){
  print(x)
  x <- x+1
}

# exemplo: n�o permitir que as somas das idades seja maior que 100
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