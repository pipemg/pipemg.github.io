# La prueba de Shapiro-Wilk es una de las más utilizadas y eficientes para comprobar la normalidad de una variable, auarnque el tamaño de la muestra debe ser menor de 5000. En caso de tener más pueden usarse alguna de las muchas pruebas de normalidad que hay.

# Test de normalidad de Shapiro-Wilk
set.seed(10)
x <- rnorm(100) # Creamos una variable normal con 100 valores
x.test <- shapiro.test(x)
print(x.test)
 
x2 <- runif(100) # Creamos una variable con distribución uniforme (no normal) con 100 valores
x2.test <- shapiro.test(x2)
print(x2.test)
 
# En este caso p < 0.05 por lo que podemos rechazar que la distribución sea de tipo normal.

# Podemos hacer unos gráficos superponiendo la distribución normal al histograma de frecuencias. Para ello hemos creado la función plotn() que lo hace. Es fácil modificarla para añadir más opciones para los gráficos.

# Dado un vector dibuja el histograma asociado y la distribución normal
 
plotn <- function(x,main="Histograma de frecuencias \ny distribución normal",
                  xlab="X",ylab="Densidad") {
  min <- min(x)
  max <- max(x)
  media <- mean(x)
  dt <- sd(x)
 
  hist(x,freq=F,main=main,xlab=xlab,ylab=ylab)
  curve(dnorm(x,media,dt), min, max,add = T,col="blue")
}
 
plotn(x,main="Distribución normal")
plotn(x2,main="Distribución uniforme")
