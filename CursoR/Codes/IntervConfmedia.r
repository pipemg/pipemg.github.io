# Par el cálculo del intervalo de confianza de la media usamos uno de los valores devueltos por la función t.test():

t.test(datos)$conf.int[1:2]

# El nivel de significación es del 95%Para cambiar el nivel de significación se usa el parámetro conf.level. Ejemplo con un nivel del 99%
t.test(iris$Sepal.Length, conf.level = 0.99)$conf.int[1:2]
#[1] 5.666920 6.019747
