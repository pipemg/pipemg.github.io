# Comparación de varianzas, dos muestras
set.seed(10)
x1 <- rnorm(30,10,1)
x2 <- rnorm(30,10,1.5)
 
var <- var.test(x1,x2)
print(var)
