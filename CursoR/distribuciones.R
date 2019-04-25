# distribución binomial

## P(X=k) = dbinom(k,n,p)

## P(X<=k) = pbinom(k,n,p)
## P(X≤8)
pbinom(8,10,0.6)
sum(dbinom(0:8,10,0.6))

## q_a= min{x:P(X<=x)>=a} = qbinom(a,n,p)
# # q0.95=min{x:P(X≤x)≥0.95}
qbinom(0.95,10,0.6)
qbinom(c(0.05,0.95),10,0.6)

## función de probabilidad 
plot(dbinom(0:10,10,0.6),type="l",xlab="k",ylab="P(X=k)",main="Función de Probabilidad B(10,0.6)")

## Función de distribución con p=0.6
plot(stepfun(0:10,pbinom(0:10,10,0.6)),xlab="k",ylab="F(k)",main="Función de distribución B(10,0.6)")

# Distribución normal.
# Supongamos que X≈N(170,12). Entonces:
# Calculamos f(178)
# f(x)  =dnorm(x,mu,sigma)

dnorm(171,170,12)

#P(X≤k) =pnorm(x,mu,sigma)

#Podemos calcular fácilmente los valores de la función de densidad sobre una secuencia de valores de x:
x=seq(165,175,by=0.5)
dnorm(x,170,12)
#qa=min{x:P(X≤x)≥a} =qnorm(a,mu,sigma)

# rnorm(n,mu,sigma) genera n valores aleatorios N(μ,σ)

#La representación gráfica de la función de densidad se obtiene fácilmente como
curve(dnorm(x,170,12),xlim=c(130,210),col="blue",lwd=2,
      xlab="x",ylab="f(x)",main="Función de Densidad N(170,12)")

# función de distribución
curve(pnorm(x,170,12),xlim=c(130,210),col="blue",lwd=2,
      xlab="x",ylab="F(x)",main="Función de Distribución N(170,12)")

# Calculamos la probabilidad P(X≤180)
pnorm(180,170,12)
# P(X>168)
1-pnorm(168,170,12)
pnorm(168,170,12, lower.tail=FALSE)

# P(150≤X≤168)
pnorm(168,170,12)-pnorm(150,170,12)
miDensidad=function(x) dnorm(x,170,12)
integrate(miDensidad,150,168)

# No es demasiado difícil representar el área correspondiente a la probabilidad que se acaba de calcular:


regionX=seq(150,168,0.01)            # Intervalo a sombrear
xP <- c(150,regionX,168)             # Base de los polígonos que crean el efecto "sombra"
yP <- c(0,dnorm(regionX,170,12),0)   # Altura de los polígonos sombreados
curve(dnorm(x,170,12),xlim=c(130,210),yaxs="i",ylim=c(0,0.035),ylab="f(x)",
      main='Densidad N(170,12)') 
polygon(xP,yP,col="orange1")
box()

# z (0.95)=min{x:P(X≤x)≥0.95}

qnorm(0.95,170,12)
#Si no se especifican media y varianza, R entiende que trabajamos con la distribución normal estándar. La siguiente instrucción nos proporciona los cuantiles 0.025 y 0.975 de la N(0,1):
qnorm(c(0.025,0.975))

#Simulamos una muestra grande de la distribución normal y comprobamos que el histograma es muy parecido a la función de densidad:
X=rnorm(10000, 170, 12)
hist(X,freq=FALSE,col="lightsalmon",main="Histograma",sub="Datos simulados de una N(170,12)")
curve(dnorm(x,170,12),xlim=c(110,220),col="blue",lwd=2,add=TRUE)

#Podemos comprobar también que la distribución acumulativa empírica de esta simulación es muy similar a la función de distribución teórica de la normal:

plot(ecdf(X))
curve(pnorm(x,170,12),xlim=c(110,220),col="red",lwd=2,lty=2,add=TRUE)
legend("topleft",lty=c(1,2),lwd=c(1,2),col=c("black","red"),legend=c("Distribución empírica","Distribución teórica"))














