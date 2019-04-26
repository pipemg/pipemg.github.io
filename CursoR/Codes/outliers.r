#Los valores atípicos o outliers son datos que son numéricamente distantes del resto de los datos. Este tipo de valores suelen indicar datos ajenos al resto o errores en la toma de datos.

#La función v.atipicos() detecta, mediante el test de Grubbs, los valores atípicos de un vector y con el parámetro e=1 devuelve el mismo vector con los valores atípicos eliminados. Es necesaria la librería outliers.

# v.atipicos()
# Elimina outliers si son significativos. Usa test de Grubbs
# Comprueba si la distribución es normal
# x: Vector que contiene los datos
# Eliminar: Si es 0 devuelve un vector con los outliers, cualquier otro valor devuelve el vector original sin los outliers
# p.o: nivel de significación para eliminar outliers
# p.n: nivel de significación para el test de distribución normal
 
v.atipicos <- function(x, eliminar=0, p.g=0.05, p.n=0.01) {
  if(!is.vector(x) || !is.numeric(x)) {
    cat("El argumento debe ser un vector numérico\n")
    return(invisible(NULL))
  }
  norm <- shapiro.test(x)
  if (norm$p.value <= p.n ) {
    cat("La distribución no es normal. Programa interrumpido\n")
    return(norm)
  }
 
  if (!require(outliers)) {
    r<- readline("Se necesita la librería 'outliers'. \n¿Instalar? (s/n)\n(Se deberá ejecutar el programa de nuevo una vez terminada la instalación.) ")
    if (r=="S" || r == "s") {
      install.packages("outliers")
      return(invisible(NULL))
 
    } else {
      return("Programa terminado\n")
    }
  }
 
  ou <- 0
  i <- 0
  n <- length(x)
  repeat {
    if(grubbs.test(x)$p.value <= p.g) {
 
      i <- i + 1
      ou[i] <- outlier(x)
      x <- rm.outlier(x)
    } else {
      n <- n - length(x)
      if ( n == 1){
        cat("Se ha encontrado 1 outlier:\n",ou)
      } else {
        if (n == 0) {
          cat("No se ha encontrado ningún outlier\n")
        } else {
 
          cat("Se han encontrado",n,"outliers:\n",ou)
        }
      }
      if (eliminar!=0) {
        return(invisible(x))
      } else {
        return(invisible(ou))
      }
    }
  }
}
 
set.seed(202) # Para asegurar la reproducibilidad de los números aleatorios
x <- rnorm(20) # 100 númros aleatorios con media 0
x <- c(x,4,-3.5) # Añadimos 2 valores atípicos
 
v.at <- v.atipicos(x) # Devuelve un vector con los outliers
print(v.at)
 
x.at <- v.atipicos(x,e=1) # e=1 produce la eliminación de los outliers
print(x.at) # El vector original sin los outliers
