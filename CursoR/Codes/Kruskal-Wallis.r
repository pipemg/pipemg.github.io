# La prueba de Kruskal-Wallis es una prueba no paramétrica que habitualmente se utiliza en lugar del ANOVA cuando no se cumplen las condiciones de normalidad. Se utiliza para comprobar si un conjunto de datos provienen de la misma población.

# Comparación de medias, test de Kruskal-Wallis
# Prueba no paramétrica
set.seed(10)
x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)
x3 <- rnorm(100,10)
 
# Primera opción: mediante factores
x <- c(x1,x2,x3) # Unión de las 3 variables en una
f <- factor(c(rep("x1",100),rep("x2",100),rep("x3",100))) # Factores
 
test1 <- kruskal.test(x~f)
 
print(test1)
 
# Segunda opción: data.frame
x<- data.frame(x1=x1,x2=x2,x3=x3)
 
test2 <- kruskal.test(x)
 
print(test2)
