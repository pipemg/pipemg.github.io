#R no tiene una función para calcular el intervalo de confianza de una variable por lo que proporcionamos una función que lo hace. El nivel de confianza por defecto es del 95%

# Función ic.var
# Intervalo de confianza para la varianza
# Modificado de http://cvb.ehu.es/open_course_ware/castellano/tecnicas/software_mate/material-de-estudio-1/tema-10-estimacion-por-punto-y-por-intervalo.pdf
 
ic.var <- function(x, conf.level=0.95) {
 
  alfa <- 1 - conf.level
  n <- length(x)
  l1 <- (n - 1) * var(x) / qchisq(1 - alfa / 2,n - 1)
  l2 <- (n - 1) * var(x) / qchisq(alfa / 2,n - 1)
  ic <- c(l1,l2)
  return(ic)
}
