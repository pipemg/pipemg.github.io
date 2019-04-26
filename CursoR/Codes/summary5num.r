#El resumen de los 5 números de Tukey fue propuesto por este autor para obtener una descripción inicial de un conjunto de datos. Se suele complementar con un gráfico de cajas.

#Estos 5 números son el segundo y tercer cuartil (que incluyen el 25% y 75% de los datos, respectivamente), la mediana, el valor máximo y el valor mínimo. Son calculados por la función fivenumbers(), si se desea también la media se puede utilizar la función summary().

# Resumen de los 5 números de Tukey aplicado a un vector
 
set.seed(10)
x <- rnorm(50,10,2) # 50 números aleatorios de media 10 y desviación típica 2
 
cinco <- fivenum(x)
seis <- summary(x)
 
cat("\nResumen de los 5 números:\n")
print(cinco)
 
 
boxplot(x,main="Resumen de los 5 números")
 
 
cat("\nResumen de los 5 número más la medias:\n")
print(seis)
boxplot(x,main="Resumen de los 5 números + media")
points(mean(x),pch=4,col="red")

# Calculo en data frames
data("iris")
 
# Usamos la función sapply() para aplicarlo ya que no funciona con data frames
# sapply() permite aplicar la función fivenum a cada columna automáticamente
cinco2 <- sapply(iris[-5],fivenum)
boxplot(iris[-5])
print(cinco2)
 
# Summary puede trabajar directamente con data frames
seis2 <- summary(iris[-5])
print(seis2)
 
medias <- sapply(iris[-5], mean) # Extraemos las medias para el gráfico
boxplot(iris[-5])
points(medias,col="red",pch=4) # Dibujamos las medias

