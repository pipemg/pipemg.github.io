# La prueba de Levene es una prueba paramétrica que se usa para comprobar la igualdad de varianzas de dos o más muestras. Se encuentra en la librería car.

# Comparación de varianzas, más de dos muestras
# Test de Levene
 
require(car)
 
set.seed(10)
x1 <- rnorm(30,10,1)
x2 <- rnorm(30,10,1.1)
x3 <- rnorm(30,10,1.2)
 
f <- factor(c(rep("x1",30),rep("x2",30),rep("x3",30)))
x <- c(x1,x2,x3)
 
var <- leveneTest(x ~ f)
print(var)


