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
]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Geométrica

]
.right-column[
<br><br>
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
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial Negativa
]
.right-column[
<br><br>

Para obtener valores que se basen en la distribución Binomial Negativa, R dispone de cuatro funciones basados en “nbinom”:

- dnbinom(x, size, prob, mu, log = F); Devuelve resultados de la función de densidad.

- pnbinom(q, size, prob, mu, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.

- qnbinom(p, size, prob, mu, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la Binomial Negativa.

-rnbinom(n, size, prob, mu); Devuelve un vector de valores binomiales aleatorios.


]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Binomial Negativa
]
.right-column[
con:
- x, q: Vector de cuantiles (Valores enteros positivos). Corresponde a número de pruebas falladas.
- q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de valores aleatorios a devolver.
- prob: Probabilidad de éxito en cada ensayo.
- size: Número total de ensayos. Debe ser estrictamente positivo.
- mu: Parametrización alternativa por la media.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p se ofrecen como log(p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo contrario, P[X > x].

```
> # Suponga que el 60% de los elementos no están defectuosos.
> # Para encontrar la probabilidad de localizar el quinto elemento sin defecto en el séptimo ensayo.
> # Calculamos P(X = 7), con r=5
> dnbinom(7-5, 5, 0.6)
> # si queremos calcular en el séptimo ensayo o antes
> pnbinom(7-5, 5, 0.6, lower.tail = T)
```
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución De Poisson
]
.right-column[
La distribución de Poisson expresa la probabilidad de un número k de eventos ocurriendo en un tiempo fijo si estos eventos ocurren con una frecuencia media conocida y son independientes del tiempo discurrido desde el último evento.

- X ~ P(λ)

La función de densidad de la distribución de Poisson es:

- f(k,λ) = e<sup>-λ</sup>λ<sup>k</sup>/k!

Para obtener valores que se basen en la distribución de Poisson, R dispone de cuatro funciones basados en“pois”:
- dpois(x, lambda, log = F); Devuelve resultados de la función de densidad.
- ppois(q, lambda, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
- qpois(p, lambda, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la Poisson.
- rpois(n, lambda); Devuelve un vector de valores binomiales aleatorios
]


---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución normal
]
.right-column[
La distribución normal, distribución de Gauss o distribución gaussiana, a una de las distribuciones de probabilidad de variable continua que con más frecuencia aparece en fenómenos reales.

Se dice que una variable aleatoria continua X sigue una distribución normal de parámetros µ y σ y se denota X ∼ N(µ, σ) si su función de densidad está dada por:

<img src="./Images/normal.png" with=40%>
 
Para obtener valores que se basen en la distribución normal, R dispone de cuatro funciones basados en “norm”:

- dnorm(x, mean = 0, sd = 1, log = F); Resultados de la función de densidad.
- pnorm(q, mean = 0, sd = 1, lower.tail = T, log.p = F); Resultados de distribución acumulada.
- qnorm(p, mean = 0, sd = 1, lower.tail = T, log.p = F); Resultados de los cuantiles de la Normal.
- rnorm(n, mean = 0, sd = 1); Vector de valores normales aleatorios.
]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución normal
]
.right-column[
<br><br>
```
> # Calcular la P(Z>1) de una N(0,1)
> pnorm(1, mean = 0, sd = 1, lower.tail = F)
> # Calcular la P(-2<Z<2) de una N(0,1)
> pnorm(c(2), mean = 0, sd = 1) - pnorm(c(-2), mean = 0, sd = 1)
> # Calcular la P(0<Z<1.96) de una N(0,1)
> pnorm(1.96, mean = 0, sd = 1) - pnorm(0, mean = 0, sd = 1)
> # Calcular la P(Z<=z)=0,5793 de una N(0,1)
> qnorm(0.5793, mean = 0, sd = 1)
> # Calcular la P(Z>150) de una Normal de media 125 y la desviación esaándar 50.
> pnorm(150, mean = 125, sd = 50, lower.tail = F)
```
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución t-Student
]
.right-column[

La distribución t-Student es una distribución de probabilidad que surge del problema de estimar la media de una población normalmente distribuida cuando el tama˜no de la muestra es peque˜no.

La distribución t de Student es la distribución de probabilidad del cociente:

- Z/sqrt(V/v)

donde:
1. Z tiene una distribución normal de media nula y varianza 1
2. V tiene una distribución chi-cuadrado con ν grados de libertad
3. Z y V son independientess
La función de densidad de t es

<img src="Images/t-test.png"> Test-T</img>

```
> qpois(0.985, 3)
```
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución normal

]
.right-column[

La distribución normal, distribución de Gauss o distribución gaussiana, a una de las distribuciones de probabilidad de variable continua que con más frecuencia aparece en fenómenos reales.

La gráfica de su función de densidad tiene una forma acampanada y es simétrica respecto de un determinado parámetro. Esta curva se conoce como **campana de Gauss**. 


Se dice que una variable aleatoria continua X sigue una distribución normal de parámetros µ y σ y se denota X ∼ N(µ, σ) si su función de densidad está dada por:


<img src="https://matematicasconmuchotruco.files.wordpress.com/2014/07/normal.png" width=350px alt="normal" align="middle"></img> 

]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución normal
]
.right-column[


- dnorm(x, mean = 0, sd = 1, log = F); Devuelve resultados de la función de densidad.
- pnorm(q, mean = 0, sd = 1, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
- qnorm(p, mean = 0, sd = 1, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la
Normal.
- rnorm(n, mean = 0, sd = 1); Devuelve un vector de valores normales aleatorios.

Con:
 - x, q: Vector de cuantiles.
 - p: Vector de probabilidades.
 - n: Números de observaciones.
 - mean: Vector de medias. Por defecto, su valor es 0.
 - sd: Vector de desviación estándar. Por defecto, su valor es 1
 - log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
 - lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución normal
]
.right-column[
<br><br>
```
> # Calcular la P(Z>1) de una N(0,1)
> pnorm(1, mean = 0, sd = 1, lower.tail = F)
> # Calcular la P(-2<Z<2) de una N(0,1)
> pnorm(c(2), mean = 0, sd = 1) - pnorm(c(-2), mean = 0, sd = 1)
> # Calcular la P(0<Z<1.96) de una N(0,1)
> pnorm(1.96, mean = 0, sd = 1) - pnorm(0, mean = 0, sd = 1)
> # Calcular la P(Z<=z)=0,5793 de una N(0,1)
> qnorm(0.5793, mean = 0, sd = 1)
> # Calcular la P(Z>150) de una Normal de media 125 y la desviación estándar 50.
> pnorm(150, mean = 125, sd = 50, lower.tail = F)

```
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución t-Student
]
.right-column[

La distribución t-Student es una distribución de probabilidad que surge del problema de estimar la media
de una población **normalmente distribuida** cuando el **tama˜no de la muestra es peque˜no**.

Aparece de manera natural al realizar la prueba t de Student para la determinación de las diferencias entre dos medias muestrales y para la construcción del intervalo de confianza para la diferencia entre las medias de dos poblaciones cuando se desconoce la desviación típica de una población y ésta debe ser estimada a partir de los datos de una muestra.

T = Z/sqrt(V/v)

- Z variable aleatoria distribuida segun una normal típica (media = 0, varianza=1)
- V es una variable con distribución chi^2
- Z y V son independientes
]
---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución t-Student
]
.right-column[

- dt(x, df, ncp, log = F); Devuelve resultados de la función de densidad.
- pt(q, df, ncp, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
- qt(p, df, ncp, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la t-Student.
- rt(n, df, ncp); Devuelve un vector de valores t-Student aleatorios.

Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de observaciones.
- df: Grados de libertad.
- ncp: Parámetro que determina la centralidad de la gráfica t-Student. Si se omite, el estudio se realiza con la gráfica centralizada en 0.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

]
---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución t-Student
]
.right-column[
<br><br>
```
> # Calcular P(T >= 1.3) con 7 grados de libertad.
> pt(1.3, 7, lower.tail = F)
> # Calcular P(T < 2.30) con 20 grados de libertad.
> pt(2.30,20, lower.tail = T)
> # P(T >= t) = 0.05 con 25 grados de libertad.
> qt(0.05, 25, lower.tail = F)
> # Calcular 5 números aleatorios con 25 grados de libertad.
> rt(5, 25)
```
]

---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Chi-cuadrado
]
.right-column[
<br><br>
En estadística, la distribución X<sup>2</sup> (de Pearson) es una distribución de probabilidad continua con un parámetro k que representa los grados de libertad de la variable aleatoria:

X = Z<sup>2</sup><sub>1</sub> + Z<sup>2</sup><sub>2</sub>+. · · + Z<sup>2</sup><sub>k</sub>

donde Z<sub>i</sub> son variables de distribución normal, de media cero y varianza uno. 

<img src="Images/densidad_chi2.png" width=350px> </img>

donde Γ es la función gamma

]
---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Chi-cuadrado
]
.right-column[
<br><br>
```
- dchisq(x, df, ncp=0, log = F); Devuelve resultados de la función de densidad.
- pchisq(q, df, ncp=0, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución
acumulada.
- qchisq(p, df, ncp=0, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la chi-Cuadrada.
- rchisq(n, df, ncp=0); Devuelve un vector de valores chi-Cuadrados aleatorios.

```

Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de observaciones.
- df: Grados de libertad.
- ncp: Parámetro que determina la centralidad de la gráfica chi-Cuadrados. Si se omite, el estudio se
realiza con la gráfica centralizada en 0.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
lower.tail: Parámetro 

]

---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución Chi-cuadrado
]
.right-column[
<br><br>
```
> # Calcular X^2(0.52, 7) con 7 grados de libertad.
> qchisq(0.52, 7, lower.tail = F)
> # P(X^2 < x) = 0.80 con 25 grados de libertad
> qchisq(0.8, 25, lower.tail = T)
> # P(X^2 >= 18.49) con 24 grados de libertad.
> pchisq(18.49, 24, lower.tail = F)
> # Calcular 5 números aleatorios de una dist. Chi-cuadrado con 24 grados de libertad.
> rchisq(5, 24)

```
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución F
]
.right-column[
<br><br>
La distribución F de Snedecor es una distribución de probabilidad continua. Una variable aleatoria de
distribución F se construye como el siguiente cociente:

F=U<sub>1</sub>d<sub>1</sub> / U<sub>2</sub>d<sub>2</sub>

- U1 y U2 siguen una distribución chi-cuadrada con d1 y d2 grados de libertad respectivamente, y
- U1 y U2 son estadísticamente independientes

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución F
]
.right-column[
```
df(x, df1, df2, ncp, log = F); Devuelve resultados de la función de densidad.
pf(q, df1, df2, ncp, lower.tail = T, log.p = F); Devuelve resultados de la función de distribución acumulada.
qf(p, df1, df2, ncp, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la distribución F.
rf(n, df1, df2, ncp); Devuelve un vector de valores de la distribución F aleatorios.
 ```
Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de observaciones.
- df1, df2: Grados de libertad, df1 corresponde al numerador y df2 al denominador.
- ncp: Parámetro que determina la centralidad de la gráfica de la distribución F. Si se omite, el estudio se realiza con la gráfica no centralizada.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

]
---
layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución F
]
.right-column[

```
> # Calcular F(0.15, 3, 2). con 3 y 2 grados de libertad.
> qf(0.15, 3, 2, lower.tail=F)
> # P(F < f) = 0.025 con df1 = 20 y df2 = Infinito.
> qf(0.025, 20, Inf, lower.tail=T)
> # P(F >= 198.50) con df1 = 10 y df2 = 2.
> pf(198.50, 10, 2, lower.tail=F)
> # Calcular 5 números aleatorios de una dist. F de Snedecor con 24 y 10 grados de libertad.
> rf(5,24,10)
```
]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución beta
]
.right-column[
<br><br>
En estadística la distribución beta es una distribución de probabilidad continua con dos parámetros a y b cuya función de densidad para valores 0 < x < 1 es
 
<img src="Images/beta_dist.png" width=450px> 

Donde Γ es la función gamma. 
]
---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución beta
]
.right-column[
```
- dbeta(x, shape1, shape2, ncp = 0, log = F); Devuelve resultados de la función de densidad.
- pbeta(q, shape1, shape2, ncp = 0, lower.tail = T, log.p = F); Devuelve resultados de la función de
distribución acumulada.
- qbeta(p, shape1, shape2, ncp = 0, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles de la
distribución Beta.
- rbeta(n, shape1, shape2, ncp = 0); Devuelve un vector de valores de la distribución Beta aleatorios.

```

Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de observaciones.
shape1, shape2: Parámetros de la Distribución Beta. Shape1 = α y Shape2 = β. Ambos deben ser
positivos.
- ncp: Parámetro lógico que determina si la distribución es central o no.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución beta
]
.right-column[
<br><br>
```
> # Mediante una distribución beta con ALPHA = 5 y BETA = 4.
> # Calcule la probabilidad al menos del 75%
> pbeta(0.75, 5, 4, lower.tail = F)
> # Menos del 50%
> pbeta(0.5, 5, 4, lower.tail = T)
> # P(X < x)=0.25
> qbeta(0.25, 5, 4, lower.tail = T)
> # P(X > x) = 0.5
> qbeta(0.5, 5, 4, lower.tail = F)
> # Calcular 5 números aleatorios de una dist. Beta con ALPHA = 5 y BETA = 4
> rbeta(5,5,4)

```
 

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución gamma
]
.right-column[
```
- dgamma(x, shape, rate, scale = 1/rate, log = F); Devuelve resultados de la función de densidad.
- pgamma(q, shape, rate, scale = 1/rate, lower.tail = T, log.p = F); Devuelve resultados de la función
acumulada.
- qgamma(p, shape, rate, scale = 1/rate, lower.tail = T, log.p = F); Devuelve resultados de los cuantiles
de la distribución Gamma.
- rgamma(n, shape, rate, scale = 1/rate); Devuelve un vector de valores de la distribución Gamma aleatorios.
```

Con:
- x, q: Vector de cuantiles.
- p: Vector de probabilidades.
- n: Números de observaciones.
- rate: Alternativa para especificar el valor de escala (Scale). Por defecto, su valor es igual a 1.
shape, scale: Parámetros de la Distribución Gamma. Shape = a y Scale = s = 1/rate. Debe ser estrictamente positivo el parámetro Scale.
- log, log.p: Parámetro booleano, si es TRUE, las probabilidades p son devueltas como log (p).
- lower.tail: Parámetro booleano, si es TRUE (por defecto), las probabilidades son P[X ≤ x], de lo
contrario, P[X > x].

]

---

layout: false
.left-column[
  ## Distribuciones de probabilidad
   ### Distribución gamma
]
.right-column[
```
> # Mediante una distribución gamma con ALPHA = 3 y BETA = 0.5.
> # Calcule la probabilidad de que sea mejor de 10
> pgamma(10, 3, rate = 0.5, lower.tail = F)
> # Entre 4 y 8
> pgamma(8, 3, rate = 0.5, lower.tail = T) - pgamma(4, 3, rate = 0.5, lower.tail = T)
> # P(X <x) = 0.7
> qgamma(0.7, 3, rate = 0.5, lower.tail = T)
> # P(X > x) = 0.5
> qgamma(0.5, 3, rate = 0.5, lower.tail = F)
> # Calcular 5 números aleatorios de una dist. gamma con ALPHA = 3 y BETA = 0.5
> rgamma(5, 3, rate = 0.5)
```
]

---
layout: false
.left-column[
  ## Regresión
   ### Definición
]
.right-column[

La regresión es una técnica estadística que analiza la relación de dos o mas variables que principalmente se utilizada para inferir datos a partir de otros y hallar una respuesta de lo que puede suceder. Esta nos permite conocer el cambio en una de las variables llamadas respuesta y que corresponde a otra conocida como variable explicativa.

Se pueden encontrar varios tipos de regresión, por ejemplo:
- Regresión lineal simple
- Regresión múltiple ( varias variables)
- Regresión logística

Algunas ecuaciones regresión son:
- Regresión Lineal : y = A + Bx
- Regresión Logarítmica : y = A + BLn(x)
- Regresión Exponencial : y = Ac(bx)
- Regresión Cuadrática : y = A + Bx +Cx2

]

---
layout: false
.left-column[
  ## Regresión
   ### Regresión lineal
]
.right-column[
La función en R para obtener modelos de regresión lineal simple, Y=aX+b, es “lm”, aunque también se
puede utilizar esta función para el análisis de la varianza y análisis de covarianza.

```
> a.docencia <- c(3,1,1,2,5,6,12,7,3,10,6,11,4,4,16,4,5,3,5,2)
> edad <- c(35,27,26,30,33,42,51,35,45,37,43,36,36,56,29,35,37,29,34,29)
> # Y=a~nos de docencia y X=edad
> lm(a.docencia~edad)->r1
> r1

```

Hay que tener en cuenta que el orden en el que se escriben las variables es de gran importancia, en este caso la variable dependiente es los a˜nos de docencia.

y=a<sub>0</sub>+a<sub>1</sub>x

y = edad

x = años de docencia

Por lo tanto, la recta es: y(x) = (1,3081) − (0,1156)x

Ejercicio: Realizar el caso donde la variable dependiente es la edad.

]
---
layout: false
.left-column[
  ## Regresión
   ### Regresión lineal
]

.right-column[

Dibujar la recta de regresión
 

```
> # Defino los datos
> x <- c(3, 5, 2, 3, 1, 4, 6, 4)
> y <- c(150, 150, 250, 200, 350, 200, 50, 125)
> # Defino la recta de regresión
> lm(y~x)->ryx

> # Definimos el eje X
> litros <- seq(0:length(x))
> # Defino la recta
> precio <- (ryx$coefficients[1])+ (ryx$coefficients[2])*aceite# Ecuación ajustada
> #Dibujo los puntos, se~nalados con una X
> plot(x, y, pch="X", col=2, xlab="Litros", ylab="Precio")
> #Dibujo la recta
> lines(precio, col=4)

```


```
> # Creamos el diagrama de puntos
> plot(x, y)
> # Dibujamos la recta de regresión
> abline(lm(y ~ x))
> predict(ryx) # Son los valores de y cuando aplicamos la recta de regresión a los calores de x
```
]
---
layout: false
.left-column[
  ## Regresión
   ### Regresión lineal
]
.right-column[
Si lo que queremos es ajustar el modelo para poder usarlo posteriormente para predecir datos utilizaremos
la función “predict”. Esta función obtiene todas las posibles predicciones para la variable x según la posición en la que se encuentren sus datos.

Predecir un vector de valores  y utilizar summary.
<br><br>
```
> x <- c(3, 5, 2, 3, 1, 4, 6, 4)
> y <- c(150, 150, 250, 200, 350, 200, 50, 125)
> # Recta de regresión sin termino independiente
> lm(y~0+x)
```
]
---
layout: false
.left-column[
  ## Regresión
   ### Regresión Polinomial
]
.right-column[
<br><br>
Para calcular la función de regresión polinomial Y = a<sub>0</sub> + a<sub>1</sub>X + a<sub>2</sub>X<sup>2 </sup>+ . . . + a<sub>p</sub>X<sup>p</sup> utilizamos la función
lm(y˜x + I(x<sup>2</sup>) + I(x<sup>3</sup>) + ... + I(x<sup>p</sup>)).

``` 
> # Cuadrática
> lm(y~x+x^2)
```
]

---

layout: false
.left-column[
  ## Regresión
   ### Regresión Polinomial
]
.right-column[
<br><br>
Para calcular la función de regresión polinomial Y = a<sub>0</sub> + a<sub>1</sub>X + a<sub>2</sub>X<sup>2 </sup>+ . . . + a<sub>p</sub>X<sup>p</sup> utilizamos la función
lm(y˜x + I(x<sup>2</sup>) + I(x<sup>3</sup>) + ... + I(x<sup>p</sup>)).

``` 
> # Cuadrática
> lm(y~x+x^2)
```
]

---

layout: false
.left-column[
  ## Regresión
   ### Regresión Polinomial sin término independiente
]
.right-column[
<br><br>
```
> lm(y~0+x+x^2)
> lm(y~0+x+I(x^2)+I(x^3))
> lm(y~0+x+I(x^2)+I(x^3)+I(x^4))
```
]

---

layout: false
.left-column[
  ## Regresión
   ### Regresión Potencial
]
.right-column[
<br><br>
Para calcular la función de regresión potencial Y = aX<sup>b</sup> utilizamos la función lm(log(y)˜ log(x)).

```
> lm(log(y)~log(x))
```
]
---

layout: false
.left-column[
  ## Regresión
   ### Regresión exponencial
]
.right-column[
<br><br>
Para calcular la función de regresión potencial Y = e<sup>a+bX</sup> utilizamos la función lm(log(y)˜x).

```
> lm(log(y)~x)
```
]
---

layout: false
.left-column[
  ## Regresión
   ### Regresión logarítmica
]
.right-column[
<br><br>
Para calcular la función de regresión logarítmica Y = a + b log(x) utilizamos la función lm(y˜ log(x)).

```
> lm(y~log(x))
```
]

---

name: last-page
template: inverse

## That's all folks (for now)!

Slideshow created using [remark](http://github.com/gnab/remark).

