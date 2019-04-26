# Esta prueba no paramétrica permite comprobar la igualdad de varianzas de dos o más muestras. 

# Comparación de varianzas, más de dos muestras
# Test de Fligner
 
set.seed(10)
x1 <- rnorm(30,10,1)
x2 <- rnorm(30,10,1.1)
x3 <- rnorm(30,10,1.2)
 
x <- data.frame(x1=x1,x2=x2,x3=x3)
 
var <- fligner.test(x)
print(var)

# Fligner-Killeen:med chi-squared = 4.7971, df = 2, p-value = 0.09085

