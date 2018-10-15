name: inverse
layout: true
class: center, middle, inverse
---
name: Inicio
#Curso de R y estadística básica
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](http://pipemg.github.io/CursoR/Presentacion1.pdf)]
---
name: Temario1
layout: false
.left-column[
  ## Temario de esta presentación

]
.right-column[
* Introducción a R
  * Historia de R
  * Instalación de R
  * R, R commander y RStudio
  * Bibliografía

- Fundamentos de R y programación
  - Expresiones y sintaxis en R
  - Funciones en R
  - Crear una función en R
  - Ayuda, manuales y ejemplos
  - Manejo de archivos del sistema

- Variables y estructuras de datos
  - El vector como unidad básica de R
  - Función concatenar
  - Generadores de secuencias
  - Acceso a elementos de un vector
  - Modificación de elementos de un vector
  - Nombres del vector
  - Operaciones sobre vectores
  - Listas y sus operaciones
]



---
name: historia
layout: false
.left-column[
## Breve historia

]
.right-column[

- Creación de S por parte de AT&T en Nueva Jersey ( John Chambers & Rick Becker)<br>

- Se mezcla S y Scheme para generar R en la universidad de Auckland (**R**obert Gentleman & **R**oss Ihaka, 1995)
   -  R esta escrito en C y Fortran
   -  GNU General Public License (freely available)<br>
   
- Creación del R Development Core Team y el CRAN (1997)<br>

- Versión mas antigua. Versión 0.49 (23 de abril de 1997)<br>

- Versión 3.4.0 (21 de abril de 2017)<br>

```
> contributors()
```
]

---
name: historia
layout: false
<br>
<image src="Images/TIOBE_rating.png" width="800px">
---
name: que_es
layout: false
.left-column[
  ## ¿Qué es R?
<br><br>
<image src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Rlogo-unofficial-vector-editable.svg/725px-Rlogo-unofficial-vector-editable.svg.png" width="160px">
]
.right-column[

**R** es un **lenguaje de programación** para la **estadística** y el **modelado de datos**.
	
R tiene las siguientes características:

- Es elegante y versatil

- Sintaxis diseñada para trabajar con datos

- Capacidades gráficas altamente potentes

- Facil y eficiente manipulación de datos

- Contiene herramientas enfocadas a las areas biológicas. 

.footnote[.red[*]  _R es lo que requieres para ciencias biológicas_]
]

---
name: que_es
layout: false
<br>
**Why R is Not Enough** 

 - The R interpreter is not fast. Execution of large amounts of R code can be unacceptably slow.
 - R is set up to carry out vectorised computations and not scalar (element-by-element) computations. 
 - R was designed to hold its data “in core” and this places severe limitations of the size of problem which can be dealt with.
<br>

**Directions for Future Work**

 - Wait for faster machines.
 - Introduce more vectorisation and take advantage of multicores.
 - Make changes to R to eliminate bottlenecks.
 - Sweep the page clean and look at designs for new languages.

.footnote[.red[*]  R: Lessons Learned, Directions for the Future
_Ross Ihaka_]

---
template: inverse

## ¿Dónde comienzo?
---
name: instalacion

.left-column[
  ## Instalación
### - Windows
]
.right-column[
Lo primero es identificar donde descargamos R para instalarlo: 

```
https://cran.r-project.org/bin/windows/base/
```
<image src="Images/R_for_windows.png" width="590px">
]
---
name: instalacion2

.left-column[
  ## Instalación
### - MAC
]
.right-column[
Lo primero es identificar donde descargamos R para instalarlo: 

```
https://cran.r-project.org/bin/macosx/
```
<image src="Images/R_for_MAC.png" width="590px">
]
---
name: instalacion3

.left-column[
  ## Instalación
### - Linux
]
.right-column[

Abrimos una terminal de linux (Ctrl + Alt + T) y dentro de esta, dependiendo del sistema operativo:

<image src="Images/ubuntu-logo.png" width="18px"> Ubuntu
```remark
$ sudo apt-get install r-base
```
<image src="Images/fedora.png" width="18px"> Fedora
```remark
$ su -c 'yum install R'
```
<image src="Images/archlinux.png" width="18px"> Arch Linux
```remark
$ sudo pacman -S r
```
]
---

.left-column[
  ## ¿Cómo funciona?
  ### - Ejecutar desde el cmd/terminal 
  ### - Entornos graficos
]
.right-column[
#### Desde Windows:

- Opcion A:

 Inicio > Simbolo del sistema

- Opcion B:

 Buscar > CMD


#### Desde MAC/Linux:
1. Se abre la terminal


## Se ejecuta:
```remark
$ R
```
]

---
.left-column[
  ## ¿Cómo funciona?
  ### - Entornos graficos
]
.right-column[
### Rstudio

Ambiente gráfico integrado, se basa en diversos compartimentos:
 - Consola para editar codigo
 - Ventana de datos e historial
 - Ventana de la Consola
 - Ventana de gráficas y archivos

<image src="http://www.sthda.com/sthda/RDoc/images/rstudio.png" width="380px" align="middle">
]
---
.left-column[
<br>
<image src="https://www.rstudio.com/wp-content/uploads/2016/09/RStudio-Logo-Blue-Gray-250.png" width="150px" align="middle">
]
.right-column[
<br> <br>

Importando desde el ambiente grafico


<image src="https://support.rstudio.com/hc/en-us/article_attachments/206327917/data-import-environment.png" width="550" align="rigth">

]

---

.left-column[
  ## ¿Cómo funciona?
  ### - Entornos graficos
]
.right-column[
### R commander (Rcmdr)

Es una inferfaz gráfica que cuenta con botones y menus extensos, las caracteristicas son

 - Contiene codigos precargados (SPSS, SAS o Stata)
 - No provee acceso directo a la linea de comandos de R
 - No es enriquecido gráficamente, contiene 3 paneles:
   - Ventana del script (código ejecutandose)
   - Ventana de Salida (Imprime los resultados)
   - Ventana de Mensajes(Errores/advertencias/notas) 
  
]

---

.left-column[
  ## ¿Cómo funciona?
  ### - Entornos graficos
]
.right-column[
<image src="http://www.unige.ch/ses/sococ/cl/r/rcommander.menu.png" width="380" align="left">
]
---
.left-column[
<br>
<image src="http://4.bp.blogspot.com/-bVDv8F9VdLY/T0yobXtHoEI/AAAAAAAADLk/QVue51r1Hbg/s1600/logo+Rcommander.png" width="100" align="left">
]
.right-column[
<br>
Utilizando las herramientas predefinidas


<image src="Images/rcomander_analysis.jpg" width="550" align="rigth">

]

---


template: inverse

## ¿Cuál usar y como instalarlo?
---
.left-column[
 ## Comparación
]
.right-column[
<br><br>
RStudio

- Provee acceso directo al codigo en R.

- Uso para proyectos que requieren interacción directa con el código o manipulacion de datos compleja

Rcmdr

- Simple y amable para el usuario sobre todo en analisis estadísticos y diagnósticos.

- Uso para analisis tradicionales, datos convencionales y tests estadísticos.

<br>
**NOTA:** Es posible ejecutar Rcmdr desde R-Studio.
]

---
.left-column[
  ## Instalación de R-Studio
]
.right-column[
RStudio tiene diferentes versiones:
 - Version gratis para escritorio
 - Version de paga para escritorio
 - Version gratis para servidor
 - Version pro para servidor

Para descargarlo entramos a 

```
https://www.rstudio.com/products/rstudio/download/
```
<image src="Images/Rstudio_instalador.png" width="550" align="rigth">
]
---
.left-column[
  ## Instalación de Rcmdr 
<br>
<image src="Images/r-seleccionar-repositorio.png" width="150">

]
.right-column[

Ejecutamos R

```remark
[usuario@equipo ~]$ R
```

Instalamos el paquete de Rcmdr

```remark
> install.packages("Rcmdr",dependencies=TRUE)
```

Seguimos las instrucciones de la salida

```remark
Aviso en install.packages("Rcmdr", dependencies = TRUE) :
'lib = "/usr/lib/R/library"' is not writable
Would you like to use a personal library instead? (y/n) y
Would you like to create a personal library
~/R/x86_64-unknown-linux-gnu-library/2.15
to install packages into? (y/n) y
```

Se abrirá una ventana para seleccionar el repositorio de dónde descargar los paquetes necesarios. Seleccionamos el que queramos y después de aceptar empezará a descargar los paquetes.

```remark
chooseCRANmirror(graphics=FALSE) # chooseCRANmirror(81)


```
]

---
.left-column[
  ## Ejecutar Rcmdr 

]
.right-column[

Ejecutamos R

```remark
[usuario@equipo ~]$ R
```

Cargamos la libreria de Rcmdr y ejecutamos

```remark
> library("Rcmdr")
```
<image src="Images/r-commander-gui.jpg" width="600">

]

---

name: code_start
template: inverse

## Mis primeros pasos en R

<image src="http://blogs.hazteoir.org/cprietoh/files/2013/06/f-11-300x221.png">

---
.left-column[
  ## Sintaxis
  ### - Aritmetica

]
.right-column[

  ```
  > 1+2 # Sumar 1 más 2 
 ```

  <br>

  ```
  > 6*5+3 # 6 por nueve añadir 3
  ```
  <br>

  ```
  > 2**3 #2 elevado al exponente 3
  > 2^8 #2 elevado al exponente 8
  ```

  <br>

  ```
  > log(exp(3)) # e elevado a la 3 y logaritmo del resultado anterior
  > log10(1000) #Logaritmo de 1000 base 10
  > log2(10**20) # Logaritmo de 10 elevado a la 20 base 10
  ```
]


---
.left-column[
  ## Sintaxis
  ### - Aritmetica

]
.right-column[

  <br><br><br>
  ```
  > 10/3
  > options(digits =16) #ver mas digitos
  > 10/3 ```

  <br>

  ```
  > pi #numeros irracionales
  ```
  <br>

  ```
  > exp(1)
  ```

]


---
.left-column[
  ## Sintaxis 
  ### - Aritmetica
  ### - Texto
]
.right-column[
  <br><br><br>  <br><br><br>
  ```
  > "Esto es una cadena de texto!"
 ```
<br><br><br>
  ```
  > palabras<-c("Esto", "es", "un", "conjunto", "de", "palabras", "en", "R")
 ```
]
---
.left-column[
  ## Sintaxis en R
  ### - Aritmetica
  ### - Texto
  ### - Operaciones Logicas
]
.right-column[
  <br><br><br>
  ```
  >  3 > 4 # ¿Es 3 mayor que 4?
 ```
  <br><br><br>  
  ```
  >  2+2 == 5 # ¿2 más dos es igual a 5?
 ```

  <br><br><br>  
  ```
  >  T == TRUE #¿Es T igual a TRUE?
 ```
]

---
.left-column[
  ## Sintaxis en R
  ### - Aritmetica
  ### - Texto
  ### - Operaciones Logicas
  ### - No definidos
]
.right-column[
  <br>  
  ```
  >  sqrt(-1)
 ```
  <br>  
  ```
  >  sqrt(-1+0i)
 ```

  <br>  
  ```
  >  sqrt(as.complex(-1))
 ```


**NaN** Not a Number
]

---

name: code_start
template: inverse


## Variables


---

.left-column[
  ## Variables
  ### - Definición
]

<br>
<br>
.right-column[
Definición de una variable

**Estructura de datos** que pueden cambiar de contenido a lo largo de la ejecución de un programa.

Una variable requiere
  - Un espacio en el sistema de almacenaje

  - Un identificador (nombre) asociado a ese espacio

  - Cantidad o informacion ya sea conocida o desconocida (Valor)


]



---
.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
]

.right-column[
Tipos de Variables:

 - **Tipo de dato cuantitativo.**
  - Numerico entero (Discreto)
   - 0, 1, -2, 3, 10, ...
  - **Numerico flotante/doble (Continuo)**
   - 12.1, 200, 5.2E10, 0.1232, pi, e, sqrt(2)

 - **Tipo de dato cualitativo(categórico).**
  -  Tipo de dato de texto 
	```
       > str(state.abb)
       > "Se pueden usar simbolos.,-.$%&/()="
	```
]



---
.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
]

.right-column[
Tipos de Variables:
 - **Tipo de dato lógico.**
	```
       > TRUE/FALSE, T/F 
	```

 - **Datos faltantes.**
	```
       > NA
       > NaN
	```
]


---

.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
  ### - Creación
]

.right-column[
Crea una variable que tenga el valor 42 que se llame a y dividela entre 3

```
> 1 <- 42 #a = 42  
> var_1/3
```

Crea una cadena de texto y ponla en la variable txt

```
> txt <- "Arrg, Soy un pirata"

```
Asigna un valor de VERDADERO a una variable logic

```
> z <- TRUE
```

]


---

.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
  ### - Creación
]

.right-column[
Datos Faltantes

```
> x <- c(3, 7, NA, 4, 7)
> y <- c(5, NA, 1, 2, 2)
> x + y
> sum(x)
> sum(x, na.rm = TRUE)
> is.na(x)
```
]

---
.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
  ### - Creación
]

.right-column[

Imprime los valores de txt, logic y de a

<br>

```
> txt

```

<br>

```
> logic

```

<br>
```
> a

```

]

---
.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
  ### - Creación
]

.right-column[
Los nombres de las variables solo pueden tener (Nombres significativos):

 - [a-zA-Z]+

 - [0-9]+

 - [._]+

Que cosas **NO** pueden tener:

 - Numeros para iniciar

 - Simbolos seguidos de numeros (Ej. A+3)

 - Solamente numeros

 - Solamente simbolos
]


---
.left-column[
  ## Vectores
  ### - Introducción a vectores

]

.right-column[

 Unidad básica de variable en R.

Introducir 74,31,95,61,76,34,23,54,96 en R

 1. Funcion **c**

```
x <- c(74,31,95,61,76,34,23,54,96) #Numerico

```

```
x <- c("74",31,95,61,76,34,23,54,96) #String

```
]


---
.left-column[
  ## Vectores
  ### - Introducción a vectores

]

.right-column[

 2. Funcion **scan** 

```
x <- scan() # empty to end

```
]

---
.left-column[
  ## Vectores
  ### - Introducción a vectores

]

.right-column[

 3. Repeated data; Regular patterns


```
>  seq(from = 1, to = 5)

```
<br>

```
>  x <- seq(from = 2, by = -0.1, length.out = 20)
>  y <- seq(from = 2, to= 100, by =  5)

```
<br>

```
>  1:5

```

]


---
.left-column[
  ## Vectores
  ### - Introducción a vectores
  ### - Indexación

]


.right-column[


```
> x[1]

```

<br>

```
> x[c(1, 3, 4, 8)]

```
<br>

```
> x[-c(1, 3, 4, 8)]

```

<br>

```
>LETTERS[1:5] 
```
<br>
```
letters[-(6:24)]
```
]


---
.left-column[
  ## Listas
  ### - Introducción y construcción de Listas

]

<br>

.right-column[

- Una lista es una colección de elementos que pueden ser de distintos tipos y que generalmente están identificados por un nombre.

- Para crear una lista se utiliza la función list

```
 > lst <- list(hombre = "Pedro", mujer = "María", casados = TRUE, numero.hijos = 3, edad.hijos = c(4, 7, 9))

```
]
---
.left-column[
  ## Listas
  ### - Introducción y construcción de Listas
  ### - Accesores y modificadores

]

<br>

.right-column[


```
 > lst$hombre

```

```
 > lst[c("hombre", "número.hijos")]

```

```
 >  lst[c(TRUE, FALSE, FALSE, TRUE, FALSE)]

```

```
 >   lst[c(1, -4)]

```
]

---
.left-column[
  ## Funciones
  ### - Definición

]

.right-column[

Definición:

**Subrutina** o **subprograma** (también llamada procedimiento, función o rutina), que se presenta como un subalgoritmo que forma parte del algoritmo principal, el cual permite resolver una tarea específica.


<image src="Images/funcion.png" width="400">

]



---
.left-column[
  ## Funciones
  ### - Definición
  ### - Ejemplos

]

.right-column[

```
> sum(1,2,6,7,9)

```
Algunas funciones requieren argumentos los cuales tienen nombres determinados

```
> rep("Yo ho! un pirata soy", times=3)

```
<br><br>
**Ejercicio:** Obten la raiz de 16 utilizando la función sqrt
]

---

.left-column[
  ## Funciones
  ### - Definición
  ### - Ejemplos
  ### - Creación

]

.right-column[

```
> mi_función<-function(varA,varB,varC,...){
>    #AQUÍ VA EL CÓDIGO A EJECUTAR
>     # ... 
>    #AQUÍ HAY MÁS CÓDIGO
> }

```
Algunas funciones requieren argumentos los cuales tienen nombres determinados

```
> rep("Yo ho! un pirata soy", times=3)

```
]

---

.left-column[
  ## Funciones
  ### - Definición
  ### - Ejemplos
  ### - Creación

]

.right-column[

<br><br>
**Ejercicio:** Genera una funcion de fibonacci. <br>
1. F_{n}=F_{n-1}+F_{n-2}
2. F_{1}=1,\;F_{2}=1} or F_{0}=0,\;F_{1}=1

]

---
.left-column[
  ## Funciones
  ### - Definición
  ### - Ejemplos
  ### - Help, example

]

.right-column[
 
De todas las funciones, la que debemos de considerar como básica es **help**

```
> help (sum)

```
<br>
```
> ?sum
```
<br>

Otra es la función **example**
<br>

```
> example(min)

```

<br><br>
**Ejercicio:** Obten el help de la función rep
]

---

.left-column[
  ## Funciones
  ### - Definición
  ### - Ejemplos
  ### - Help, example
  ### - Codigo

]

.right-column[
 
 Escribe el nombre de una función sin parentesis

```
> intersect

```

Buscar una función con methdos

```
> methods(summary)

```
Ejercició. Busca la ayuda y el metodo de un test de wilcox
```
> wilcox.test
> ?wilcox.test
> methods(wilcox.test)

```
Ejercició. busca las funciones de R que comienzan con lengt
```
> ??lengt
```
]


---

.left-column[
  ## Obtener ayuda
   ### - Interna

]

.right-column[
 

 - **FAQ on R:** [https://cran.r-project.org/doc/FAQ/R-FAQ.html](https://cran.r-project.org/doc/FAQ/R-FAQ.html)

 - **FAQ on R for Windows:**  [https://cran.r-project.org/bin/windows/base/rw-FAQ.html](https://cran.r-project.org/bin/windows/base/rw-FAQ.html)

 - **R Manuals:** [https://cran.r-project.org/manuals.html](https://cran.r-project.org/manuals.html)

 - **R functions (text):**  help("mean"), ?plot

 - **HTML Help:** help.start()

 - **Search help:** help.seaerch("plo") // ?? plo
 
 - **search.r-project.org** 

 - **R Help Mailing Lists**  [http://www.r-project.org/mail.html](http://www.r-project.org/mail.html)


]



---

.left-column[
  ## Obtener ayuda
   ### - Interna
   ### - Externa

]

.right-column[
 
### Para R

 - **R-Forge:**  [http://r-forge.r-project.org/](http://r-forge.r-project.org/)

 - **R Wiki:** [http://wiki.r-project.org/rwiki/doku.php](http://wiki.r-project.org/rwiki/doku.php)

 - **R Graph Gallery:**  [http://addictedtor.free.fr/graphiques/](http://addictedtor.free.fr/graphiques/)

 - **R Graphical Manual** [http://bm2.genes.nig.ac.jp/RGM2/index.php](http://bm2.genes.nig.ac.jp/RGM2/index.php)

 - **RSeek**  [(http://www.rseek.org](http://www.rseek.org) 


### Para estadística

 -  **Probabilidad y Estadistica para ingeniería y ciencias**
 *Warpole &bull; Myers &bull; Myers. 9th Ed*

### Para todo
 - **Google**  [www.google.com](www.google.com) 

]




---

.left-column[
  ## Obtener ayuda
   ### - Interna
   ### - Externa
   ### - Otros tips

]

.right-column[
 
 - **Console:**  Shortcuts (Ej. Ctrl+L)

 - **Up Arrow** Para comandos utilizados

 - **objects() o ls()** Variables actuales

 - **remove(var1,var2,var3) o rm(var1,var2)** Borrar variables
 
 - **rm(list=ls())** Borrar todo


]

---
.left-column[
  ## Archivos
  ### - Ver archivos, obtener el directorio y cambiar de directorio

]

.right-column[
 
Con el fin de leer una carpeta dentro del sistema podemos utilizar la función **list.files()**

```
> list.files()
```

Localizar el directorio actual

```
> getwd() #*Get* *W*orking *D*irectory
```

Cambiar el directorio actual
```
> setwd() #*Set* *W*orking *D*irectory
```
]


---
.left-column[
  ## Archivos
  ### - Ver archivos
  ### - Scripts R

]

.right-column[
 Cuando se programa en R, se generan documentos llamados **Scripts**, los cuales en general por convención finalizan en .R y pueden ser ejecutados en el momento que se desee.

 Si se quiere ejecutar un codigo determinado desde la terminal se utilza la función **source**:

[beers_code.r](Codes/beers_code.r)

```
> source("beers_code.r")
```
]



---


name: last-page
template: inverse


## That's all folks (for now)!

