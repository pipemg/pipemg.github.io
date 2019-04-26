# Análisis en componentes principales
 
data(iris)
 
iris.pca <- prcomp(iris[-5])  # ACP
 
# Preparación de colores par gráficos
colores <- as.character(iris$Specie)
colores[colores=="setosa"] <- "red"
colores[colores=="virginica"] <- "black"
colores[colores=="versicolor"] <- "blue"
 
pairs(iris.pca$x,col=colores) # Dibujo de los pares de componentes
 
# Valores propios con la varianza explicada por las componentes
cat("\nValores propios\n")
print(iris.pca$sdev)
cat("\nValores propios en % \n")
print(round(100*(iris.pca$sdev)/sum(iris.pca$sdev),1))
cat("\nValores propios acumulados en % \n")
print(cumsum(round(100*(iris.pca$sdev)/sum(iris.pca$sdev),1)))
 
# Correlaciones de las variables con cada componente
# Las componentes se pueden interpretar según el peso de las variables
iris.pca$rotation
 
# Grafico PC1-2 variables
plot(iris.pca$rotation,pch='')
abline(h = 0, v = 0, col = "gray60")
text(iris.pca$rotation,labels=rownames(iris.pca$rotation))
 
# Grafico PC1-3 variables
plot(iris.pca$rotation[,1],iris.pca$rotation[,3],pch='.')
abline(h = 0, v = 0, col = "gray60")
text(iris.pca$rotation[,1],iris.pca$rotation[,3],labels=rownames(iris.pca$rotation))
 






# Análisis de componentes principales
# Datos de presencia/ausencia de características genéticas mendelianas
 
x <- read.table("http://pastebin.com/raw.php?i=xeV7h24k",header=T,sep=",", row.names=1)
 
 
x.pca <- prcomp(x)
 
plot(x.pca$x,pch="")
text(x.pca$x,labels=rownames(x))
abline(h = 0, v = 0, col = "gray60")
 
cat("\nValores propios\n")
print(x.pca$sdev)
cat("\nValores propios en % \n")
print(round(100*(x.pca$sdev)/sum(x.pca$sdev),1))
cat("\nValores propios acumulados en % \n")
print(cumsum(round(100*(x.pca$sdev)/sum(x.pca$sdev),1)))
 
# Aportación de cada variable a 5 primeras las componentes
x.pca$rotation[,1:5]
