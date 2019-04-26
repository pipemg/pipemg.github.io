# La prueba de Anderson-Darling necesita la librería nortest.
 # Test de normalidad de Anderson-Darling
library(nortest)
set.seed(10)
x <- rnorm(100) # Creamos una variable normal con 100 valores
x.test <- ad.test(x)  # Test de Lilliefors
x.test
 
# Creamos una variable con distribución uniforme (no normal) con 100 valores
x2 <- runif(100)
x2.test <- ad.test(x2)
x2.test
 
#    Anderson-Darling normality test
 
# data:  x2
# A = 2.2429, p-value = 9.982e-06
