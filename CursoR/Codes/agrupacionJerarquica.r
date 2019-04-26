# Ejemplo 1
# Análisis de conglomerados
# dist tiene varios tipos de índices para usar
# hclust tiene también varios métodos de unión
 
data(iris)
iris.d <- dist(iris[,1:4])
iris.cl <- hclust(iris.d)
iris.cl
 
plot(iris.cl,lab=iris[,5],cex=0.5, hang = -1,xlab = "Species")


#Call:
#hclust(d = iris.d)
 
#Cluster method   : complete
#Distance         : euclidean
#Number of objects: 150


# División del cluster en grupos 

datos <- read.table("http://pastebin.com/raw.php?i=P76h35XP",sep="\t", dec=","
                    ,header=T)
 
# Estandarización de los datos
datos[,2:3] <- scale(datos[,2:3])
# Matriz de distancias
datos.dis <- dist(datos[,2:3])
# Agrupamientos
datos.cl <- hclust(datos.dis)
# Creación de k grupos
(grupos <- cutree(datos.cl, k=2))
 
plot(datos.cl,hang = -1,cex=0.7,labels = datos[,1],
     main= "Cluster hombres y mujeres")
rect.hclust(datos.cl, k=2, border="red")


