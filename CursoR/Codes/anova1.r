#La prueba de ANOVA se utiliza para comprobar si varias muestras tienen la misma media. Al ser una prueba paramétrica las muestras deben ser normales.

# Las muestras deben ir en la misma columna de un data frame o un vector (como en el ejemplo de aquí) y se identifican mediante una variable de tipo factor.
# Comparación de medias, ANOVA de un nivel
# Prueba paramétrica
set.seed(10)
# Construimos 3 variables aleatorias de media 10
# Excepto x2 que tiene media 10.5
x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)
x3 <- rnorm(100,10)
 
 
x <- c(x1,x2,x3) # Unión de las 3 variables en una
 
# La variable f identifica los casos pertenecientes a x1, x2 y x3
f <- factor(c(rep("x1",100),rep("x2",100),rep("x3",100))) # Factores
 
 
test <- aov(x~f)
 
print(summary(test))
