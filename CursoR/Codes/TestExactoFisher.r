# El test exacto de Fisher se usa para comprobar la asociación de variables cualitativas en tablas de contingencia (ver ejemplo)

# Test exacto de Fisher para tablas de contingencia
 
 
#         Diestro  Zurdo    TOTAL
# Hombre    43          9       52
# Mujer      44          4       48
# TOTAL     87          13      100
 
# Creación de los datos de sexo
sexo <- c(rep("H",52), rep("M",48))
 
# Creación de los datos zurdo y diestro
dz <- c(rep("d",43),rep("z",9),rep("d",44),rep("z",4))
 
# Elaboración de la tabla sexo/diestro-zurdo
tabla <- table(sexo,dz)
tabla
 
test <- fisher.test(tabla)
test
# Dado que p > 0.05 no hay diferencias entre hombres y mujeres
# en cuanto a ser diestro o zurdo
 
# También se pueden introducir directamente las frecuencias y los factores
test2 <- fisher.test(sexo,dz)
test2


# Dado que p > 0.05 no hay diferencias entre hombres y mujeres 

