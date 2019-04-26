# Para el cálculo de los intervalos de confianza de los porcentajes usaremos binom.test en lugar de prop.test ya que esta última es una aproximación a la primera basada en la distribución normal, mientras que el primero es un test exacto. El resultado devuelto es la proporción sobre 1, si deseamos porcentajes hay que multiplicar por 100 los resultados.
# Intervalo de confianza de un porcentaje o proporción

 # Se contabiliza el % de hombres y mujeres de una reunión de 60 personas
 # y se halla su intervalo de confianza
 # Hay 21 mujeres (35%) y 39 hombres (65%)

 # Mujeres
 pm <- binom.test(21,60)$conf.int[1:2]
 # pm es la proporción, se multiplica por 100 para expresar el resultado en %
 100 * pm

 # Hombres
 ph <- binom.test(39,60)$conf.int[1:2]
 # ph es la proporción, se multiplica por 100 para expresar el resultado en %
 100 * ph

