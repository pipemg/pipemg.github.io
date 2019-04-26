#El intervalo de confianza para la mediana se puede calcular mediante el test de Wilcoxon, wilcox.test, aunque hay que especificar que lo haga con la opción .conf.int = TRUE.

set.seed(1)
x <- trunc(runif(11, 1, 100))
wilcox.test(x, conf.int = TRUE, conf.level = 0.95)

Podemos acceder directamente al intervalo de confianza añadiendo $conf.int


