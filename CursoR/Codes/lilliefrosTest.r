#Esta prueba de normalidad requiere la librería nortest.

# Test de normalidad de Lilliefors
library(nortest)
set.seed(10)
x <- rnorm(100) # Creamos una variable normal con 100 valores
x.test <- lillie.test(x)  # Test de Lilliefors
x.test
 
# Creamos una variable con distribución uniforme (no normal) con 100 valores
x2 <- runif(100)
x2.test <- lillie.test(x2)
x2.test
 

