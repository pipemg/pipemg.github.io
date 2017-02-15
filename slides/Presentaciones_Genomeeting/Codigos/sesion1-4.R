## ---- fig.width=4, fig.height=3.5----------------------------------------
library(MASS)
data("Boston")
head( Boston[,c("lstat", "medv", "age")])

## ---- fig.width=4, fig.height=3.5----------------------------------------
plot(Boston$lstat, Boston$medv, pch=19, cex=.5)

## ---- fig.width=4, fig.height=3.5----------------------------------------
modelo <- lm( medv ~ lstat, Boston )
modelo

## ------------------------------------------------------------------------
coefs <- coefficients( modelo )
coefs["(Intercept)"] + coefs["lstat"] * 15

## ---- fig.width=4, fig.height=3.5----------------------------------------
plot(Boston$lstat, Boston$medv, pch=19, cex=.5)
abline(modelo, lwd=2, col="red")

## ------------------------------------------------------------------------
modelo2 <- lm( medv ~ lstat + age, Boston )
modelo2

## ------------------------------------------------------------------------
library(ISLR)
data( Default )
head( Default )

## ------------------------------------------------------------------------
lm( income ~ student, Default )

## ------------------------------------------------------------------------
modelo3 <- lm( balance ~ income * student, Default )
modelo3

## ------------------------------------------------------------------------
anova( lm( income ~ student, Default ) )

## ------------------------------------------------------------------------
getPval <- function(grupoA, grupoB){
    x <- c( grupoA, grupoB )
    y <- rep(c("A", "B"), each=50)
    anova( lm( x ~ y ) )["y","Pr(>F)"]
}

getPval( rnorm( n=50, mean=0 ), rnorm( n=50, mean=50 ))
getPval( rnorm( n=50, mean=0 ), rnorm( n=50, mean=0 ) )

## ---- fig.height=4, fig.width=4------------------------------------------
nullTests <- replicate( 1000, 
    getPval( rnorm(50, mean=0), rnorm(n=50, mean=0)) 
    )
hist( nullTests )

## ------------------------------------------------------------------------
table( nullTests < 0.1 )

## ---- fig.height=4, fig.width=4------------------------------------------
altTests <- replicate( 150, 
    getPval( rnorm(50, mean=0), rnorm(n=50, mean=50)) 
    )
allTests <- c(altTests, nullTests)
hist( allTests, xlab="p-values")

## ------------------------------------------------------------------------
qvalues <- p.adjust( allTests, method="BH" )
table( allTests < 0.1 )
table( qvalues < 0.1 )

## ------------------------------------------------------------------------
obtenerValorEsperado <- function( fracPelotasBlancas, n )
{
    valorEsperado <- n * fracPelotasBlancas
    valorEsperado
}
n <- 20
fracPelotasBlancas <- .1
valorEsperado <- 
  obtenerValorEsperado( fracPelotasBlancas, n )
valorEsperado

## ---- eval=TRUE, echo=FALSE----------------------------------------------
set.seed(20)

## ---- R.options=list(width=50)-------------------------------------------
numPersonas <- 50
resSampleo <- rpois( numPersonas, valorEsperado )
resSampleo

## ------------------------------------------------------------------------
valorEsperado
var( resSampleo )

## ------------------------------------------------------------------------
standarDev <- sqrt( valorEsperado )
standarDev / valorEsperado

## ---- eval=FALSE---------------------------------------------------------
## valorEsperado <- n * fracPelotasBlancas

## ---- fig.width=4, fig.height=4------------------------------------------
n=seq(0, 1000, 10)
x <- obtenerValorEsperado( fracPelotasBlancas, n)
ea <- sqrt(x)/x
plot( n, ea, ylab="Error de aproximación", pch=19, cex=.2)

