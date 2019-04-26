# La prueba de Tukey es una prueba paramétrica usada para comparar varios pares de muestras y ver diferencias entre sus medias. Lo habitual es usarlo tras comprobar que hay diferencias a través de una ANOVA de un nivel.


# Comparación de medias, ANOVA de un nivel
# Prueba paramétrica
set.seed(10)
# Construimos 3 variables aleatorias de media 10
# Excepto x2 que tiene media 10.5
x1 <- rnorm(100,10)
x2 <- rnorm(100,10.5)
x3 <- rnorm(100,10)
 
 
x <- c(x1,x2,x3) # Unión de las 3 variables en una
 
# La variable f identifica los casos pertenecientes a x1, x2 y x3
f <- factor(c(rep("x1",100),rep("x2",100),rep("x3",100))) # Factores
 
 
test <- aov(x~f)
 
print(summary(test))
 
print(TukeyHSD(test))


# ANOVA da como resultado que hay diferencias entre las medias (valor bajo Pr inferior a 0.05) . La prueba de Tukey proporciona las diferencias entre los pares de datos. La significación la encontramos bajo p adj. x3-x1 son iguales, los pares donde aparece x2 tienen medias diferentes. todo esto indica que x1 y x3 tienen la misma media y x2 tiene otra diferente.
