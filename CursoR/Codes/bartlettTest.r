# Esta prueba paramétrica se utiliza para ver si un conjunto de muestras provienen de poblaciones con la misma varianza

# Comparación de varianzas, más de dos muestras
# Test de Bartlett
 
# Creación de 3 variables aleatorias con variables ligeramente distintas
set.seed(10)
x1 <- rnorm(30,10,1)
x2 <- rnorm(30,10,1.1)
x3 <- rnorm(30,10,1.2)
 
x <- data.frame(x1=x1,x2=x2,x3=x3) # Unión de las variables en un data frame
 
var <- bartlett.test(x) # Test de Bartlett
print(var)

# El valor de la p mayor a 0.05 indica que no hay diferencias.

