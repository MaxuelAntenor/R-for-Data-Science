# Fun��es
# Objetivo: Repetir instru��es

# qual a soma dos valores de a?

a <- c(423, 464, 69, 519, 123, 258)

# solu��o

x <- 0
for(i in a){
  x <- x + i
}
print(x)

# e a soma dos valores de b?
b <- c(51, 36, 123, 98, 23, 37, 63, 3)

x <- 0
for(i in b){
  x <- x + i
}
print(x)
# solu��o

# precisando realizar 50 somas no c�digo?

soma <- function(y){
  x <- 0
  for (i in y){
    x <- x + i
  }
  print(x)
}

soma(a)
soma(b)
