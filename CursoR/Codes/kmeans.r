# k-means realiza una partición de los datos en k grupos
 
data(iris)
 
# Usamos las 4 primeras columnas.
# centers es el número de particiones que realizaremos
modelo <- kmeans(iris[,1:4], centers = 3)
modelo
 
table(modelo$cluster, iris[,5]) # Clasificación de los casos por k-means
 
library(useful) # necesario para el gráfico
plot.kmeans(modelo,iris[,1:4])

# k-means realiza una partición de los datos en k grupos

data(iris)
 
# Usamos las 4 primeras columnas.
# centers es el número de particiones que realizaremos
modelo <- kmeans(iris[,1:4], centers = 3)
 
#Available components: 
# "cluster"      "centers"      "totss"        "withinss"     "tot.withinss" "betweenss"    "size"         "iter"         "ifault"
 
table(modelo$cluster, iris[,5]) # Clasificación de los casos por k-means

 
library(useful) # necesario para el gráfico
 
plot.kmeans(modelo,iris[,1:4])

# El gráfico representa la distribución de los grupos en las dos primeras componentes principales del análisis de PCA
