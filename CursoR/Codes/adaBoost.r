# AdaBoost - Adaptative Boosting
# Clasifica clases preestablecidas
# No tiene requerimientos para las variables
 
library(adabag)
data(iris)
 
# Selección de una submuestra de 105 (el 70% de los datos)
set.seed(101)
iris.indices <- sample(1:nrow(iris),size=105)
iris.entrenamiento <- iris[iris.indices,]
iris.test <- iris[-iris.indices,]
 
model <- boosting(Species ~ ., data = iris.entrenamiento)
 
# Importancia de cada variable
model$importance
 
# predict necesita el parámetro newdata
results <- predict(object = model, newdata=iris.test, type = "class")
 
results$confusion
 
# Correctamente clasificados
100 * sum(diag(results$confusion)) / sum(results$confusion)

