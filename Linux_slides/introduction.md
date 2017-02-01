name: inverse
layout: true
class: center, middle, inverse
---


name: Inicio
#Curso Básico de Linux
[Felipe de J. Muñoz González]

[fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)
.footnote[Introducción<br>[Descargar Presentación](http://pipemg.github.io/Linux_slides/introducción.html)]
---
## Objetivo General
#### Ofrecer al participante los conocimientos básicos para la administración y utilización del sistema operativo Linux.

<br><br>

## Objetivos Particulares

 Desempeñarse en el entorno gráfico de Gnome y Unity

 Dar uso correcto de las utilidads básicas del entorno de Linux

 Realizar tareas de administrador para el manejo del sistema

 Conocer las bases de seguridad de linux

---
name: que_es
layout: false
.left-column[
  ## ¿Qué es Linux?
<br><br>
<image src="http://blog.capacityacademy.com/wp-content/uploads/2014/11/linux-tux.png" width="160px">
]
<br><br><br><br>

.right-column[
**Linux** es un **sistema operativo gratuito** y de **libre distribución** inspirado en el sistema Unix, escrito por **Linus Torvalds** con la ayuda de miles de **programadores en Internet.**

<br><br><br><br>


**Unix** es un sistema operativo desarrollado en 1970. Una de sus mayores ventajas es que es **fácilmente portable** (PC, Mac, estaciones de trabajo y superordenadores).
]

---
template: inverse

## ¿Que es un sistema operativo?
---
name: SO

.left-column[
  ## Sistema operativo

]
.right-column[
Son programas (Software) que aportan los mecanismos y las reglas básicas para la comunicación maquina-usuario.

El **sistema operativo** es el encargado de **controlar y dirigir la computadora**. Traduciendo las instrucciones del usuario a un lenguaje que la maquina (hardware) pueda comprender.

Es el responsable de brindar una forma de **operar**, **interpretar**, **codificar** y **emitir** ordenes al **procesador central de la computadora** para que realice las tareas necesarias y especificas para completar una orden.

 - Windows
 - Lion OS, Leopard OS, ... (Mac OS)
 - Ubuntu
 - UNIX
 - Fedora
 - CentOS
 - ...

]
---
name: Historia

.left-column[
  ## Historia del Software Libre
]
.right-column[ 

- **1983**: Richard Stallman crea GNU (GNU is not Unix)

- **1989**: Primera versión de la licencia GNU GPL.

- **1991**: El núcleo Linux es anunciado públicamente

- **1992**: Las primeras distribuciones Linux son creadas.

- **1993**: +100 desarrolladores trabajan sobre Linux. 

- **1994**: Linus Benedict Torvalds presenta la versión 1.0

- **1995**: Nueva rama estable de Linux en SUN SPARC.

- **1996**: Linux 2.0, Procesamiento en paralelo

- **1998**: IBM, Compaq y Oracle dan soporte para Linux. 

- **1998**: Se desarrolla la interfaz KDE para linux

- **1999**: Aparece 2.2 del núcleo Linux y GNOME

- **2000**: La Suite de oficina StarOffice

- **2001**: Núcleo Linux 2.4, Soporta hasta 64 Gb de RAM

]
---
name: Historia

.left-column[
  ## Historia del Software Libre
]
.right-column[ 

- **2002**: La comunidad libera OpenOffice.org  1.0 

- **2005**: El proyecto openSUSE es comenzado

- **2006**: Oracle publica su propia distribución de Red Hat

- **2007**: Dell llega a ser el primer fabricante en vender una computadora personal de escritorio con Ubuntu preinstalado.

<image src="https://4.bp.blogspot.com/-8nqDqfdHGvU/WBqaz19e-KI/AAAAAAAABBM/8O1CULTur8YIijWWDJ4ioqAtXXEy-BhpACLcB/s400/linux_distros.png">

]
---
name: EntornoGrafico

.left-column[
  ## Entornos Gráfico de Linux
]
.right-column[

Existen diferentes entornos graficos (Interfaz con usuario) entre los principales estan: Unity (solo ubuntu), KDE y Gnome.

Todos estos tienen como objetivo **facilitar** y hacer más **atractivo** el uso de Linux, a pesar de esto. Todo lo que se puede hacer por medio de la interfaz gráfica se puede hacer desde la terminal.

<image src="https://www.kde.org/announcements/4.2/screenshots/desktop.png" with=100px>

<image src="http://blog.fpmurphy.com/blog-images/gnome3-22.png" with=100px>

<image src="http://toastytech.com/guis/ubuntu114defaultunity.jpg" with=100px>

<image src="http://blog.desdelinux.net/wp-content/uploads/2012/03/gnome-fallback.jpg" with=100px>

<image src="http://blog.capacityacademy.com/wp-content/uploads/2014/11/linux-tux.png" width=160px>
]

---
name: EntornoGrafico2

.left-column[
  ## Elementos del entorno gráfico
]
.right-column[

En general todos los entornos gráficos cuentan con:

 - Escritorio: Ocupa toda la pantalla y se pueden situar sobre el otros objetos

 - Iconos: Representan objetos accesibles

 - Paneles: Cada barra que se encuentra en la pantalla y facilitan el trabajo

 - Menus: Estos varian, los más comunes son aplicaciones, lugares y sistema

]
---
template: inverse

## ¿Bash, Shell o Terminal?

---

name: Terminal

.left-column[
## ¿Bash, Shell o Terminal?
 - Shell
]
.right-column[

**Shell** es un programa cuya función consiste en **interpretar órdenes** al sistema operativo y **ejecutar programas**.

Después se derivó en un lenguaje de programación que involucra:

 - Control de procesos
 - Redirección de entrada/salida
 - Listado y lectura de ficheros
 - Protección
 - Comunicaciones 

<img src="http://myfpschool.com/wp-content/uploads/2014/04/ej5.png" style="width:400px;">

**Bourne Shell** (Por Steven Bourne) fue el mayor shell de la historia y se incluyó en la primera versión de unix


]


---

name: Terminal

.left-column[
## ¿Bash, Shell o Terminal?
### Shell
### Bash
]
.right-column[

Existen diferentes interpretes de shell:
 - csh
 - bash 
 - zsh 
 - fish
 - ...

**Bash** (Bourne Again shell - otro shell bourne) es un **intérprete de comandos Unix** escrita para el proyecto **GNU**. 

```
[~]$bash --version
$bash --version
bash --version

```

```bash
GNU bash, version 4.3.11(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```


]


---

name: Terminal

.left-column[
## ¿Bash, Shell o Terminal?
### Shell
### Bash
### Terminal (ttys) y Consola
]
.right-column[

La terminal es una consola de comandos Unix escrita para el proyecto GNU. 

 - Terminal = tty = text input/output environment

 - Consola = Terminal Física


<image src="Images/terminal.png" style="width:600px;">
]


---
name: Iniciar la terminal
.left-column[
## ¿Como Iniciar la terminal?
]
.right-column[
<br> <br> <br> <br>  <br>
  Opciones:  <br> 

  1. Por medio del menu.  <br><br>  **Aplicaciones** &rarr;  **Accesorios** &rarr; **Terminal**

  2. Por medio de comando.  <br><br>  **Ctrl** + **Alt** + **T** (algunos)

  3. Buscador del sistema. <br><br>   **buscar** &rarr; **Terminal**
]

---
name: Terminal

.left-column[
## ¿Bash se instala?
]

.right-column[

.pull-left[

**Comando**

<pre><code>[~]$ echo $SHELL </code></pre>

<pre><code>[~]$ which bash </code></pre>

<pre><code>[~]$ whereis bash </code></pre>



]
.pull-right[

**Resultado**

<pre><code> /bin/bash </code></pre>


<pre><code> /bin/bash </code></pre>


<pre><code> bash: /bin/bash /etc/bash.bashrc /usr/share/man/man1/bash.1.gz 
</code></pre>
]
Otro comando
<br> 
<pre><code>% chsh /usr/local/bin/bash</code></pre>
]



---



.left-column[
# "EL COMANDO"
<br><br>

]
.right-column[

 <img src="http://image.slidesharecdn.com/recruitloop-mystartupstory-130922195721-phpapp01/95/slide-13-1024.jpg" style="width:150px; margin-left:120px;">

.pull-left[
#<a style="color:red"> - man</a>
#### - info/help
#### - date
#### - cal
#### - uptime
#### - whoami
#### - finger 

]
.pull-right[
#### - uname
#### - df
#### - du
#### - free
#### - whereis 
#### - file
#### - find
#### - history
]
]
---

name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
## man
]
.right-column[
<br><br><br>
 - **An interface to the on-line reference manuals** 

]
---


name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
## date
]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - **Print or set the system date and time**


]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
### date
## cal, ncal
]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - Print or set the system date and time<br><br>

 - **Displays a calendar and the date of Easter**<br><br>



]

---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
### date
### cal, ncal
## uptime
]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - Print or set the system date and time<br><br>

 - Displays a calendar and the date of Easter<br><br>

 - **Tell how long the system has been running.**<br><br>

]

---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
### date
### cal, ncal
### uptime
## whoami
]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - Print or set the system date and time<br><br>

 - Displays a calendar and the date of Easter<br><br>

 - Tell how long the system has been running.<br><br>

 - **Print effective userid**<br><br>

]

---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
### date
### cal, ncal
### uptime
### whoami
### uname

]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - Print or set the system date and time<br><br>

 - Displays a calendar and the date of Easter<br><br>

 - Tell how long the system has been running.<br><br>

 - Print effective userid <br><br>

 - **print system information**<br><br>

]

---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### man
### date
### cal, ncal
### uptime
### whoami
### uname
## df

]
.right-column[
<br><br><br>
 - An interface to the on-line reference manuals<br><br>

 - Print or set the system date and time<br><br>

 - Displays a calendar and the date of Easter<br><br>

 - Tell how long the system has been running.<br><br>

 - Print effective userid <br><br>

 - print system information<br><br>

 - **report file system disk space usage**<br><br>

]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
## du

]
.right-column[
<br><br><br>
 - **estimate file space usage**<br><br>



]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### du
## free


]
.right-column[
<br><br><br>
 - estimate file space usage<br><br>

 - **Display amount of free and used memory in the system**<br><br>


]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### du
### free
## whereis

]
.right-column[
<br><br><br>
 - estimate file space usage<br><br>

 - Display amount of free and used memory in the system<br><br>

 - **locate the binary, source, and manual page files for a command** <br><br>



]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### du
### free
### whereis
## file

]
.right-column[
<br><br><br>
 - estimate file space usage<br><br>

 - Display amount of free and used memory in the system<br><br>

 - locate the binary, source, and manual page files for a command <br><br>

 - **Determine file type**<br><br>



]
---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### du
### free
### whereis
### file
## find

]
.right-column[
<br><br><br>
 - estimate file space usage<br><br>

 - Display amount of free and used memory in the system<br><br>

 - locate the binary, source, and manual page files for a command <br><br>

 - determine file type<br><br>

 - **search for files in a directory hierarchy** <br><br>




]

---
name: Terminal

.left-column[
# <a style="color:black">Comandos</a>
### du
### free
### whereis
### file
### find
## history

]
.right-column[
<br><br><br>
 - estimate file space usage<br><br>

 - Display amount of free and used memory in the system<br><br>

 - locate the binary, source, and manual page files for a command <br><br>

 - determine file type<br><br>

 - search for files in a directory hierarchy <br><br>

 - **GNU History Library**<br><br>


]

---


name: last-page
template: inverse

## That's all folks (for now)!

Slideshow created using [remark](http://github.com/gnab/remark).
