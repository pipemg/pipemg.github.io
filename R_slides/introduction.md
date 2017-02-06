name: inverse
layout: true
class: center, middle, inverse
---
name: Inicio
#Curso de R y estadística básica
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](https://github.com/gnab/remark)]
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

- Capacidades gráficas altamente potentes

- Facil y eficiente manipulación de datos

- Contiene herramientas enfocadas a las areas biológicas. 

.footnote[.red[*]  _R es lo que requieres para investigar_]
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

<image src="http://tuxylinux.com/wp-content/themes/images/logos/ubuntu-22.png" width="18px"> Ubuntu
```remark
$ sudo apt-get install r-base
```
<image src="http://tuxylinux.com/wp-content/themes/images/logos/fedora-22.png" width="18px"> Fedora
```remark
$ su -c 'yum install R'
```

<image src="http://tuxylinux.com/wp-content/themes/images/logos/archlinux-crystal-22.png" width="18px"> Arch Linux
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
<image src="http://www.tuxylinux.com/wp-content/uploads/2013/02/r-commander-gui.png" width="600">

]

---

name: code_start
template: inverse

## Mis primeros pasos en R

<image src="http://blogs.hazteoir.org/cprietoh/files/2013/06/f-11-300x221.png">

---
.left-column[
  ## Sintaxis
  ### - Calculadora

]
.right-column[

  <br><br><br>
  ```
  > 1+2
 ```

  <br>

  ```
  > 6*9
  ```
  <br>

  ```
  > 2**3
  ```
  <br>

  ```
  > 2^8
  ```

]


---
.left-column[
  ## Sintaxis en R
  ### - Calculadora
  ### - Texto
]
.right-column[
  <br><br><br>  <br><br><br>
  ```
  > "Esto es una cadena de texto!"
 ```
]
---
.left-column[
  ## Sintaxis en R
  ### - Calculadora
  ### - Texto
  ### - Operaciones Logicas
]
.right-column[
  <br><br><br>
  ```
  >  3 > 4
 ```
  <br><br><br>  
  ```
  >  2+2 == 5
 ```

  <br><br><br>  
  ```
  >  T == TRUE
 ```
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
<br>
.right-column[
Tipos de Variables:

   - **Tipo de dato lógico.**
      - TRUE/FALSE, T/F 

   - **Tipo de dato numerico**
      - 12.1, 200, 5.2E10, 0.1232

   - **Tipo de dato cadena**
      - "Esto es texto", "Se pueden usar simbolos.,-.$%&/()="

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
Crea una variable que tenga el valor 42 que se llame var_1

```
> var_1 <- 42
```

Divide esa variable entre 2

```
> var_1/2
```

Crea una cadena de texto y ponla en la variable txt

```
> txt<- "Arrg, Soy un pirata"

```
Asigna un valor de VERDADERO a la variable logic

```
> logic <- TRUE
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
  ## Funciones
  ### - Definición

]

<br>
<br>
.right-column[

Definición:

**Subrutina** o **subprograma** (también llamada procedimiento, función o rutina), que se presenta como un subalgoritmo que forma parte del algoritmo principal, el cual permite resolver una tarea específica.

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

 <br> <br> <br>
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

Slideshow created using [remark](http://github.com/gnab/remark).
