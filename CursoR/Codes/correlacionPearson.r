# El coeficiente de correlación de Pearson se utiliza cuando los datos siguen una distribución normal para comprobar si dos variables cuantitativas tienen una relación lineal entre sí, es decir si varían de forma simultánea. En caso de no cumplirse la normalidad se utilizan la correlación de Spearman o la de Kendall.

# Existen dos funciones que calculan la correlación: cor() y cor.test(). La primera nos permite calcular la correlación de un par de variables o de un conjunto de pares (normalmente de un data.frame) pero no calcula el valor p de significación. cor.test() sí calcula la significación de la correlación pero no puede aplicarse a más de dos variables a mismo tiempo. Hemos creado la función r.test() que devuelve una matriz de correlaciones y otra con las significaciones correspondientes.

# cor()

# Correlación de Pearson entre pares de variables
 
data("iris")
 
# Correlaciones entre las variables de "iris" excepto la nº 5
p <- cor(iris[-5]) # Correlación de Pearson
 
 
cat("Correlación de Pearson\n")
print(p)
 
# # Test de correlación
 
data(iris)
 
# Test de correlación entre dos variables de iris
test <- cor.test(iris$Sepal.Length,iris$Sepal.Width)
 
print(test)
 

# r.test()

# m tiene que ser una matriz o data.frame.
# Hace un test de correlación entre las columnas dando como resultado una matriz
# de r y otra de p
 
r.test <-function(m,method="pearson") {
 
  n<-0
 
  # Matriz que contendrá los p-value
  p<-matrix(rep(0,ncol(m)^2), nc=ncol(m),nr=ncol(m))
  colnames(p) <- rownames(p) <- colnames(m)
 
 
  # Matriz que contendrá las correlaciones
  r<-matrix(rep(1,ncol(m)^2), nc=ncol(m),nr=ncol(m))
  colnames(r) <- rownames(r) <- colnames(m)
 
 
  for (i in 1:(ncol(m)-1)) {
    for (j in (i+1):ncol(m)) {
      n <- n+1
      test <- cor.test(m[,i],m[,j],method=method)
      p[i,j] <- p[j,i] <- test$p.value
      r[i,j] <- r[j,i] <- test$estimate
 
    }
  }
 
  return(list("Method"=test$method,"r"=r,"p-value"=p))
}
 
data("iris")

