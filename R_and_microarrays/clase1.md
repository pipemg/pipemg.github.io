name: inverse
layout: true
class: center, middle, inverse
---
name: Inicio
#Curso de R y microarreglos
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](http://pipemg.github.io/R_slides/presentacion1.pdf)]
---
## ¿Qué es y por que deberia usarlo?
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

- Capacidades gráficas altamente potentes (imagenes vectorizadas)

- Facil y eficiente manipulación de datos (Uso de recursos computacionales)

- Contiene herramientas enfocadas a las areas biológicas. (CRAN 12,548 Bioconductor 1477+909+326 Total 15,260)

.footnote[.red[*]  _R es lo que requieres para ciencias biológicas_]
]
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

Permite importar y ver los datos de una manera gráfica 

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

Cargamos la libreria de Rcmdr

```remark
> library("Rcmdr")
```
<image src="Images/r-commander-gui.jpg" width="600">

]

---

name: code_start
template: inverse

## Mis primeros pasos en R

<!--<image src="http://blogs.hazteoir.org/cprietoh/files/2013/06/f-11-300x221.png"> -->

---
.left-column[
  ## Sintaxis
  ### - Aritmetica

]
.right-column[

  <br><br><br>
  ```
  > 1+2
 ```

  <br>

  ```
  > 6*9+3 #6 por nueve añadir 3
  ```
  <br>

  ```
  > 2**3 #2 elevado al exponente 3
  > 2^8 #2 elevado al exponente 8
  ```

  <br>

  ```
  > log(exp(1)) #2 elevado al exponente 8
  > log10(1000)
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
  >  3 > 4 #¿Es 3 mayor que 4?
 ```
  <br><br><br>  
  ```
  >  2+2 == 5 #¿2 más dos es igual a 5?
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
  <br> 
  ```
  >  0+1i
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

<br>
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
Crea una variable que tenga el valor 42 que se llame var_1 y dividela entre 2

```
> var_1 <- 42
> var_1 = 42 
> var_1/2
```

Crea una cadena de texto y ponla en la variable txt

```
> txt <- "Arrg, Soy un pirata"

```
Asigna un valor de VERDADERO a una variable logic

```
> z <- TRUE
```

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

<br>
<br>
.right-column[

Imprime los valores de txt, logic y de var_1

<br>

```
> print(txt)

```

<br>

```
> logic

```

<br>
```
> var_1

```

]

---
.left-column[
  ## Variables
  ### - Definición
  ### - Tipos
  ### - Creación
]

<br>
<br>
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

<br>
<br>
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
<br>
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

<br>
<br>
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

<br>

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
  ## Funciones
  ### - Definición

]

<br>
<br>
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

<br>
<br>
.right-column[

 <br> 
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
  ### - Help, example

]

<br>
<br>
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

<br>
<br>
.right-column[
 
 Escribe el nombre de una función sin parentesis

```
> intersect

```


 UseMethod

```
> rev

```



```
> methods(rev)

```


```
> rev.default

```


```
> wilcox.test
> methods(wilcox.test)

```
]


---

.left-column[
  ## Obtener ayuda
   ### - Interna

]

<br>
.right-column[
 
 - **Console:**  Shortcuts (Ej. Ctrl+L)

 - **FAQ on R:** [https://cran.r-project.org/doc/FAQ/R-FAQ.html](https://cran.r-project.org/doc/FAQ/R-FAQ.html)

 - **FAQ on R for Windows:**  [https://cran.r-project.org/bin/windows/base/rw-FAQ.html](https://cran.r-project.org/bin/windows/base/rw-FAQ.html)

 - **R Manuals:** [https://cran.r-project.org/manuals.html](https://cran.r-project.org/manuals.html)

 - **R functions (text):**  help("mean"), ?plot

 - **HTML Help:** help.start()

 - **Search help:** help.seaerch("plo") // ?? plo
 
 - **search.r-project.org** 

 - **Apropos** ?apropos // apropos("lm") // find("cor")  

 - **R Help Mailing Lists**  [http://www.r-project.org/mail.html](http://www.r-project.org/mail.html)


]



---

.left-column[
  ## Obtener ayuda
   ### - Interna
   ### - Externa

]

<br>
<br>
.right-column[
 

 - **R-Forge:**  [http://r-forge.r-project.org/](http://r-forge.r-project.org/)

 - **R Wiki:** [http://wiki.r-project.org/rwiki/doku.php](http://wiki.r-project.org/rwiki/doku.php)

 - **R Graph Gallery:**  [http://addictedtor.free.fr/graphiques/](http://addictedtor.free.fr/graphiques/)

 - **R Graphical Manual** [http://bm2.genes.nig.ac.jp/RGM2/index.php](http://bm2.genes.nig.ac.jp/RGM2/index.php)

 - **RSeek**  [(http://www.rseek.org](http://www.rseek.org) 

 - **Google**  [www.google.com](www.google.com) 

]




---

.left-column[
  ## Obtener ayuda
   ### - Interna
   ### - Externa
   ### - Otros tips

]

<br>
<br>
.right-column[
 
 - **Up Arrow** Para comandos utilizados

 - **objects() o ls()** Variables actuales

 - **remove(var1,var2,var3) o rm(var1,var2)** Borrar variables
 
 - **rm(list=ls())** Borrar todo


]

---
.left-column[
  ## Archivos
  ### - Ver archivos

]

<br>
<br>
.right-column[
 
Con el fin de leer una carpeta dentro del sistema podemos utilizar la función **list.files()**

```
> list.files()
```

]




---
.left-column[
  ## Archivos
  ### - Ver archivos
  ### - Scripts R

]

<br>
<br>
.right-column[
 Cuando se programa en R, se generan documentos llamados **Scripts**, los cuales en general por convención finalizan en .R y pueden ser ejecutados en el momento que se desee.

 Si se quiere ejecutar un codigo determinado desde la terminal se utilza la función **source**:



```
> source("bottle_code.r")
```

get code:
[bottle_code.r](bottle_code.r)

]



---


name: last-page
template: inverse


## That's all folks (for now)!

