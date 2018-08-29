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



name: last-page
template: inverse


## That's all folks (for now)!

