# La t de Student se utiliza para comprobar la igualdad de las medias de dos muestras. También para comprobar si la media de una muestra es igual a una media teórica determinada. Los datos tienen que tener distribución normal (véase la prueba de Shapiro-Wilk. En el caso de que este requisito no se cumpla se puede utilizar en su lugar la prueba de los rangos con signo de Wilcoxon.
 

# Comparación de dos medias, t de student
# Prueba paramétrica
set.seed(10)
x1 <- rnorm(100,10) # Variable aleatoria de media 10
x2 <- rnorm(100,10.5) # Variable aleatoria de media 10.5
 
test <- t.test(x1,x2) # Prueba t de Student
 
print(test)


#Dado que p-value < 0.05 podemos afirmar que las muestras difieren en su media.

# Un gráfico de cajas ayuda a interpretar este resultado. Las medias se indican mediante un punto rojo:
boxplot(x1,x2,names=c("X1","X2"))
medias <- c(mean(x1),mean(x2))
points(medias,pch=18,col="red")
