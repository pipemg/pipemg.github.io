name: inverse
layout: true
class: center, middle, inverse
---
name: Inicio
#Curso de R y estadística básica
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](http://pipemg.github.io/CursoR_INMEGEN/Presentacion4.pdf)]
---

name: last-page
template: inverse

## Distribuciones de probabilidad
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Definiciones
]

.right-column[
<br><br>
Cuando una variable aleatoria toma diversos valores, la probabilidad asociada a cada uno de tales valores puede ser organizada como una **distribucion de probabilidad**.

Las distribuciones de probabilidad pueden representarse a traves de una una formula que se le denomina **funcion de probabilidad**. Existen dos tipos de distribuciones:

- Distribuciones discretas
- Distribuciones continuas
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Definiciones
]
.right-column[
<br><br>

| Función       | Distribución      |   Tipo    |       media   |                   varianza                |
|:-------------:|:-----------------:|:---------:|:-------------:|:-----------------------------------------:|
| bern          | Binomial          | Discreta  |    µ = np     |              σ<sup>2</sup>=npq            |
| geom          | geometrica        | Discreta  |    µ =1/p     |   σ<sup>2</sup>=(1-p)/p<sup>2</sup>       |
| hyper         | hipergeométrica   | Discreta  |    µ = nk/N   |  σ<sup>2</sup>=(N-n)/(n-1) n k/N(1 - k/N) |
| nbinom        | binomial negativa | Discreta  |    µ = [(r-1)(1-p)/p] si r>1, 0 si r<=1  | σ<sup>2</sup>= |
| pois          | Poisson           | Discreta  |    µ =  λ     |  σ<sup>2</sup> =  λ                       |
| beta          | beta              | Continua  |    µ = α/(α + β) | σ<sup>2</sup>=αβ/(α + β)<sup>2</sup> /(α + β + 1)  |

]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Definiciones
]
.right-column[
<br><br>

| Función       | Distribución      |   Tipo    |       media   |                   varianza                |
|:-------------:|:-----------------:|:---------:|:-------------:|:-----------------------------------------:|
| cauchy        | Cauchy–Lorentz    | Continua  |    µ = x<sub>0</sub>| Not Defined                         |
| exp           | exponencial       | Continua  |    µ = 1/λ    |  σ<sup>2</sup>= 1/λ<sup>2</sup>           |
| chisq         | chi-cuadrado      | Continua  |    µ = k      | σ<sup>2</sup>=2k                          |
| fisher        | F                 | Continua  |    µ =  d<sub>2</sub>/(d<sub>2</sub> - 2)    |  σ<sup>2</sup>= |
| gamma         | gamma             | Continua  |    µ =p/a     | σ<sup>2</sup> =p/a<sup>2</sup>            |
| logis         | logística         | Continua  |    µ = µ      | σ<sup>2</sup> = π<sup>2</sup>*s^2 /3      |
| norm          | normal            | Continua  |    µ = µ      |  σ<sup>2</sup> = σ<sup>2</sup>            |
| t             | t-Student         | Continua  |    µ = 0      | σ<sup>2</sup> = v/(v-2)                   |
| unif          | uniforme          | Continua  |  µ = (a+b)/2  |  σ<sup>2</sup>=(b-a)<sup>2</sup>/12       |

]   
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Definiciones
]
.right-column[
<br><br>
A cada nombre de función dado por R se le agrega un prefijo ‘d’ para obtener la función de densidad, ‘p’ para la función de distribución acumulada, ‘q’ para la función cuantil o percentil y ‘r’ para generar variables pseudo-aleatorias (random). La sintaxis es la siguiente:

> dxxx(x, ...)
> pxxx(q, ...)
> qxxx(p, ...)
> rxxx(n, ...)

Donde xxx indica el nombre de cualquiera de las distribuciones, x y q son vectores que toman valores en el soporte de la distribución, p es un vector de probabilidades y n es un valor entero.

]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial
]
.right-column[
<br><br>
La distribución  binomial es una distribucón de probabilidad que
toma valor 1 para la probabilidad de éxito (p) y valor q para la probabilidad de fracaso (q = 1 − p).

Se dice que la variable aleatoria X se distribuye como una Binomial de
parametro p si sigue un proceso de bernulli. 

 - Los experimentos constan de ensayos repetidos
 - Cada ensayo se clasifica como éxito o fracaso
 - La probabilidad de éxito p es constante
 - Los ensayos

X ∼ Be(p)

f(x) = p<sup>x</sup> (1 − p)<sup>1-x</sup>; con x = {0, 1}


]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial
]
.right-column[
<br><br>
- dbinom(x, size, prob, log = F); Devuelve resultados de la función de densidad.
- pbinom(q, size, prob, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
- qbinom(p, size, prob, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la binomial.
- rbinom(n, size, prob); Devuelve un vector de valores binomiales aleatorios.

Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Número de observaciones
- size: Números de ensayos(debe ser cero o máss).
- prob: Probabilidad de éxito en cada ensayo.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p se ofrecen como log(p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo contrario, P[X > x].

]
---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial
]
.right-column[
<br><br>
```
> dbinom(3, 10, 0.5) # Calculamos la P(X=3) de una Binomial(10,0.5) 
> dbinom(6, 10, 0.5) # Calculamos la P(X=6) de una Binomial(10,0.5)
> dbinom(c(2, 1, 0), 10, 0.5) # Calculamos la P(X=2,1,0) de una Binomial(10,0.5)
> sum(dbinom(c(2, 1, 0), 10, 0.5)) # Calculamos la P(X<=2) de una Binomial(10,0.5)
> sum(dbinom(c(0, 1, 2), 10, 0.5))
> # Que coincide con la función pbinom
> pbinom(2,10,0.5)
> pbinom(2,10,0.5, lower.tail=F) # Calculamos la P(X>2) de una Binomial(10,0.5)
> pbinom(10,10,0.5) 
> qbinom(c(0.90), 10, 0.5)# Los valores de X que tiene una probabilidad de ocurrir en torno al 90%
> qbinom(c(0.95), 10, 0.5) # Los valores de X que tiene una probabilidad de ocurrir en torno al 95%
> rbinom(2,10,0.5) # 2 números aleatorios de una binomial
> rbinom(9,10,0.5)  # 9 números aleatorios de una binomial

```

]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial
]
.right-column[
<br><br>
### Ejemplo

Considere un conjunto de experimentos de Bernoulli en el que se seleccionan tres articulos al azar de un proceso de producción, luego seinspeccionan y se clasifican como defectuosos o no defectuosos. Un artículodefectuoso se designa como éxito. El número de éxitos es una variable aleatoriaX que toma valores integrales de 0 a 3. Los ocho resultadosposibles son.

|  **Resultado**  | NNN | NDN | NND | DNN | NDD | DND | DDN | DDD |
|:---------------:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|        x        |  0  |  1  |  1  |  1  |  2  |  2  |  2  |  3  |

Los artículos se seleccionan de forma independiente y se asume que el proceso produce 25% de artículos defectuosos.

P(NDN) = P(N)P(D)P(N) = (3/4)(1/4)(3/4) = 9/64

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial
]
.right-column[
<br><br>
El número x de éxitos en n experimentos de Bernoulli se denomina **Variable aleatoria binomial**. La  distribución de probabilidades de esta variable aleatoria discreta se llama **distribución binomial**.

- Se denota como b(x,n,p)

Para la distribución de probabilidad de X es:

- P(X=2) = f(2) = b(2;3,1/4) = 9/64

En forma general, una probabilidad p de éxito y q=1-p el fracaso. La distribucion de la variable aleatoria binomial X, el númerode éxitos en n ensayos independientes es:

- b(x;n,p) = Conv(n,x)p<sup>x</sup>q<sup>n-x</sup>, x = 0,1,2,3,4,...,n

- (q + p)<sup>n</sup> = Conv(n,0) q<sup>n</sup> + Conv(n,1) p<sup>1</sup>q<sup>n-1</sup> + Conv(n,2) p<sup>2</sup>q<sup>n-2</sup> + ... + Conv(n,n) p<sup>n</sup>

- p + q = 1  -->  sum(b(x;n,p)) =1
]

---
layout: false
.left-column[
  ## Distribuciones de probabilidad
    ### Experimentos multinominal
]
.right-column[
<br><br>

Un experimento bimodal se convierte en un experimento **multinominal** si cada prueba contiene más de dos resultados posibles. 

En general, si un ensayo puede tener una de las k consecuencias E<sub>1</sub>,E<sub>2</sub>,E<sub>3</sub>,...,E<sub>k</sub> con probabilidad P<sub>1</sub>,P<sub>2</sub>,P<sub>3</sub>,...,P<sub>k</sub>, la **distribución multinomial** dará la probabilidad de que E<sub>i</sub> ocurra x<sub>i</sub> veces, donde

x<sub>1</sub> + x<sub>2</sub> + ... + x<sub>k</sub> = n

denotamos esta distribución como

f(x<sub>1</sub>,x<sub>2</sub>,...,x<sub>k</sub>;p<sub>1</sub>,p<sub>2</sub>,...,p<sub>k</sub>)

]

---
layout: false
.left-column[
  ## Distribuciones de probabilidad
    ### Experimentos multinominal

]
.right-column[
<br><br>

**Ejemplo**
La complejidad de las llegadas y salidas de los aviones en un aeropuerto es tal que a menudo se utiliza la simulación para modelar las condiciones "ideales". Para un aeropuerto A se tienen 3 pistas de aterrizaje y un avión llega con las siguientes probabilidades.

- Pista 1: p<sub>1</sub> = 4/18
- Pista 2: p<sub>2</sub> = 3/18
- Pista 3: p<sub>3</sub> = 11/18

¿Cuál es la probabilidad de que 6 aviones que llegan al azar se distribuyan de la siguiente manera?

- Pista 1: 2 aviones
- Pista 2: 1 avión
- Pista 3: 3 aviones

f(2,1,3;4/18,3/18,11/18,6) = 6!/2!1!3! * 2<sup>2</sup>/9<sup>2</sup> * 11<sup>3</sup>/18<sup>3</sup> = 0.1127

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
    ### Distribución Geométrica

]
.right-column[
<br><br>
La distribución Geométrica es una serie de ensayos de Bernoulli independientes, con probabilidad constante p de éxito, donde la variable aleatoria X denota el número de ensayos hasta el primer éxito.

 - X ~ G(p)

 - f(x) = p(1-p)<sub>x-1</sub>; con x={0,1}

```
 - dgeom(x, prob, log = F); Devuelve resultados de la función de densidad.
 - pgeom(q, prob, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
 - qgeom(p, prob, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la Geométrica.
 - rgeom(n, prob); Devuelve un vector de valores binomiales aleatorios.

```

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
    ### Distribución Geométrica

]
.right-column[
con:

 - x, q: Vector de cuantiles que representa el número de fallos antes del primer éxito.
 - p: Vector de probabilidades.
 - n: Números de valores aleatorios a devolver.
 - prob: Probabilidad de éxito en cada ensayo.
 - log, log.p: Parámetro booleano, si es TRUE, las probabilidades p se ofrecen como log(p).
 - lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo contrario, P[X > x].

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
    ### Distribución Geométrica
]
.right-column[

<br><br>

```
> dgeom(4, 0.5) # Calculamos la P(X=4) de una G(0.5); representa el número de fallos antes del primer éxito

> pgeom(4, 0.5, lower.tail = F) # Calculamos la P(X>4) de una G(0.5) > # Que en este caso coincide con dgeom(4, 0.5)

> Lo comprobamos; P(X > 4) = 1 - P(X<=3) = 1 - [P(X=0)+P(X=1)+P(X=2)+P(X=3)+P(X=4)]
> 1 - (dgeom(0, 0.5) + dgeom(1, 0.5) + dgeom(2, 0.5)+ dgeom(3, 0.5) + dgeom(4, 0.5))

```
]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial Negativa
]
.right-column[
<br><br>
Surge de un contexto semejante al que conduce a la distribución geométrica. La distribución que asigna a la variable Y, el número de 
ensayo en el que ocurre el r-ésimo éxito.

Entonces X tiene una distribución Binomial Negativa.

 - X ~ BN(x,r,p)

su función de probabilidad

 - P(y) = conv(x-1,r-1)p<sup>r</sup>q<usp>x-r</sup>; para x {r,r+1,r+2,...}

Para obtener valores que se basen en la distribución Binomial Negativa, R dispone de cuatro funciones basados en “nbinom”:

- dnbinom(x, size, prob, mu, log = F); Devuelve resultados de la función de densidad.

- pnbinom(q, size, prob, mu, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.

- qnbinom(p, size, prob, mu, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la Binomial Negativa.

-rnbinom(n, size, prob, mu); Devuelve un vector de valores binomiales aleatorios.


]
---

layout: false
.left-column[
  ## Programación
   ### Distribución Binomial Negativa
]
.right-column[
con:
- x, q: Vector de cuantiles (Valores enteros positivos). Corresponde a número de pruebas falladas.
- q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de valores aleatorios a devolver.
prob: Probabilidad de éxito en cada ensayo.
size: Número total de ensayos. Debe ser estrictamente positivo.
mu: Parametrización alternativa por la media.
log, log.p: Parámetro booleano, si es TRUE, las probabilidades p se ofrecen como log(p).
lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

> # Suponga que el 60% de los elementos no están defectuosos.
> # Para encontrar la probabilidad de localizar el quinto elemento sin defecto en el séptimo ensayo.
> # Calculamos P(X = 7), con r=5
> dnbinom(7-5, 5, 0.6)
> # si queremos calcular en el séptimo ensayo o antes
> pnbinom(7-5, 5, 0.6, lower.tail = T)

]
---

layout: false
.left-column[
  ## Programación
   ### Distribución De Poisson
]
.right-column[
La distribuci´on de Poisson expresa la probabilidad de un n´umero k de eventos ocurriendo en un tiempo fijo si estos eventos ocurren con una frecuencia media conocida y son independientes del tiempo discurrido desde el ´ultimo evento.

- X ~ P(λ)

La funci´on de densidad de la distribuci´on de Poisson es:

- f(k,λ) = e<sup>-λ</sup>λ<sup>k</sup>/k!

Para obtener valores que se basen en la distribuci´on de Poisson, R dispone de cuatro funciones basados en“pois”:
- dpois(x, lambda, log = F); Devuelve resultados de la funci´on de densidad.
- ppois(q, lambda, lower.tail = T, log.p = F); Devuelve resultados de la funci´on de distribuci´on acumulada.
- qpois(p, lambda, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la Poisson.
- rpois(n, lambda); Devuelve un vector de valores binomiales aleatorios

Con:
- x: Vector de cuantiles (Valores enteros positivos).
- q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: N´umeros de valores aleatorios a devolver.
- prob: Probabilidad de ´exito en cada ensayo.
- lambda: Vector de medias (valor no negativo).
- log, log.p: Par´ametro booleano, si es TRUE, las probabilidades p se ofrecen como log(p).
- lower.tail: Par´ametro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo contrario, P[X > x].

]
---

layout: false
.left-column[
  ## Programación
   ### Distribución De Poisson
]
.right-column[

```
> # Calcular la P(X = 1) de una Poisson(3)
> dpois(1, 3)
> dpois(c(1), 3)
> # Calcular la P(X <= 3) de una Poisson(3)
> ppois(3,3)
> # Calcular la P(X > 3) de una Poisson(3)
> ppois(3, 3, lower.tail=F)
> # Calcular el valor de la variable aleatoria X, dada la probabilidad 0.985
> qpois(0.985, 3)

```
]
---

layout: false
.left-column[
  ## Programación
   ### Operadores lógicos y comparativos
]
.right-column[

]
---

layout: false
.left-column[
  ## Programación
   ### Operadores lógicos y comparativos
]
.right-column[

]
---

layout: false
.left-column[
  ## Programación
   ### Operadores lógicos y comparativos
]
.right-column[

]
---

layout: false
.left-column[
  ## Programación
   ### Operadores lógicos y comparativos
]
.right-column[

]
---
name: last-page
template: inverse

## That's all folks (for now)!

Slideshow created using [remark](http://github.com/gnab/remark).

