name: inverse
layout: true
class: center, middle, inverse
---
name: Inicio
#Curso de R y estadística básica
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](http://pipemg.github.io/R_slides/presentacion1.pdf)]
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
> txt

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
> source("bottle1.R")
```
]



---


name: last-page
template: inverse


## That's all folks (for now)!

