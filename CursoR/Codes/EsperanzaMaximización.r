# EM  Algoritmo esperanza-maximimación
# Divide los datos en clases que previamente no existen
# Selecciona el modelo más simple y que más explica usando BIC
 
library(mclust)
data(iris)
datos <- iris[,-5]  # Eliminanos los nombres de las especies
 
modelo <- Mclust(datos)
 
# La tabla nos muestra la división realizada (2 clases)
table(modelo$classification, iris$Species)
 
# Hay 3 tipos más de gráficos
plot(modelo, what="classification")
 
# Predicción de un valor
nuevo <- data.frame(Petal.Width=1, Petal.Length=1,Sepal.Length=1,Sepal.Width=1)
predict(model,new=nuevo)
