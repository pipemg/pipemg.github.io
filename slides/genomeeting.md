name: inverse
layout: true
class: center, middle, inverse
---
template: inverse
name: title

### Genommiting 2016. RNAseq Workflow

### [fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)

.footnote[Descargar Presentación http://pipemg.github.io/slides/genomemeeting.html]
---
name: abstract
layout: false

.left-column[
## Temas 


]
.right-column[
<br>
### 0. Introducción a Linux
### 1. Introduccion a R
### 2. Bases de Datos 
### 3. Introducción a Bioconductor
### 4. Introducción a NGS
### 5. Workflow General del Análisis
### 6. Anotación Funcional

]
---
template:inverse

# Introducción a linux

---

.left-column[

### Introducción a linux


]
.right-column[
<br><br><big><big>

- ¿Que es Linux?

- Caracteristicas

- Distribuciones

- Estructura de Directorios

- Maquina virtual

- Bases de Shell

- Comandos Básicos de Linux

</big></big>

]

---
template:inverse

# Introducción a R
---
.left-column[

### Introducción a R


]
.right-column[
<br><br><big><big>

- Introduccion a R

- R Studio

- Como funciona R

- Manejo de Objetos en R

- Factores

- Graficos

- Exportación e Importación de Datos

- Manipulación de datos

</big></big>
]
---
template:inverse

# Bases de Datos de Información Genómica
---

.left-column[
### Bases de Datos de Información Genómica

]
.right-column[


<br><br>
### "Big Data" y Bioinformatica

Concepto que hace referencia al almacenamiento de **grandes
cantidades de datos Genómicos** provenientes de tecnologías de
secuenciación **NGS** y a los procedimientos usados para encontrar
patrones repetitivos dentro de esos datos.

#### Tipos de datos 

- Secuencias de nucleotidos
- Secuencias de proteinas
- Genomicas
- Patrones de secuencias
- Estructuras de DNA, RNA, Proteina
- ...

]

---
.left-column[
### Bases de Datos de Información Genómica

]
.right-column[


<br><br>
### Distribución y manejo de datos

#### Retos existentes

- **Heterogenidad de los datos**
 (Nt, proteinas, Interactoma,...)

- **Diferentes tecnologias** para obtener datos (NGS, Microarrays, MS, ...)

- **Formatos** para organizar (Fasta, fastq, gff, pdb,...)

- **Volumen** de información (TB+)

- **Redundancia** de información

- **Errores** heradados

- **Anotaciones** "inconsistentes"

]

---
.left-column[
### Bases de Datos de Información Genómica

]
.right-column[


<br><br>


#### Modelos de Bases de datos

- Relacional

- Jerárquico

- Redes

- Objetos

- ...

]

---

### Bases de Datos de Información Genómica


<img src="Images/genomic_dbs.png" width=820px>


---

### Propositos de las bases de datos
.pull-left[
#### Repositorios
 - NCBI
 - EMBL-EBI
 - RefSeq


#### Proyectos
 - ENCODE
 - 1000 Genomes
 - HapMap

]
.pull-right[


#### Especializados
 - PDB (3D proteins)
 - Pfam
 - TargetScan
 - dbGaP
 - ArrayExpress

#### Específicos para Especie y taxa
 - Rat Genome DB
 - FlyBase
 - Wormbase
 - TAIR (arabidopsis)
 - E.coliHub, E.coli DB
]




---
template:inverse

# Introducción a Bioconductor
---

.left-column[

### Introducción a Bioconductor


]
.right-column[
<br><br><big><big>

- ¿Que es un paquete de R?

- ¿Que es Bioconductor?

- Presentación de Bioconductor

- Workflows de Bioconductor

- DESeq2 (Alejandro Reyes)

- Vignette


</big></big>
]
 
---
template:inverse

# Introducción a NGS
---

.left-column[

### Introducción a NGS


]
.right-column[
<br><br><big><big>

- Fundamentos de Secuenciación

- Tecnologías NGS

- RNA-seq


</big></big>
]
 
---

.left-column[

### Introducción a NGS


]
.right-column[
<br><br>
### Fundamentos de Secuenciación 

<big><br>
- Watson & Crick, complementariedad de bases
 <br> <br>

- Generación 0 de secuenciadores (Evolucion, proteinas)

 <br> <br>
- Fundamentos de secuenciación
</big>

]
 
---


#### Generalidades

<div style="align:left; float: left;">
<img src="http://www.bioradiations.com/wp-content/uploads/2015/12/fig-01.gif" width=400px> 
<br><br>
</div >
<div style="  overflow:visible; margin-left: 450px">
 - DNA pol
 - Lee y copia la información del genoma
 - Secuencia complementaria
 - proofreading

</div>
<div style="float: left;  margin-top:150px;  margin-left:-450px">
 - RNA pol.
 - Informacion del DNA a RNA

 - Ribosoma
 - Lee RNA y lo pasa a polipeptidos
 
</div>
<div style="align:rigth; float: right; margin-left:350px  overflow:visible;">
<img src="http://archive.cnx.org/resources/bb2b28ac6f42c19f7ba82f0f4dfda90c885ae044/Figure_15_02_02.jpg" width=450px> 
</div >
---

.left-column[

### Introducción a NGS


]
.right-column[
<br><br><br><br>
### Secuenciadores de primera Generación

<br>

#### - Secuenciación por degradación (Maxam & Gilbert)

#### - Secuenciación por sintesis parcial (Sanger)

]
 
---


<br>

.left-column[

### Secuencion por Sanger

<img src="http://www.bioch.ox.ac.uk/images/news/20120124-lakin/figure1_534px.png" width="150px">

<img src="https://www.abmgood.com/marketing/knowledge_base/img/PCR/PCR-polymerase_chain_reaction.png" width="150px">

<img src="http://www.chemicell.com/products/purification/rna/_img/rna.png" width="150px">

<img src="https://upload.wikimedia.org/wikipedia/commons/c/c5/Sanger_Sequencing_Gel_Electrophoresis_Image.png" width="150px">
]
.right-column[
<br><br>
1. Desfragmentación del DNA

<br><br>

2. Amplificación utilizando dNTPs y ddNTPs

<br><br>
3. Purificación (remover dNTPs y ddNTPs)

<br><br>

4. Electroforesis
]

---

.left-column[

### Introducción a NGS


]
.right-column[
<br><br>
#### Secuencion por Sanger

<img src="http://www.cultek.com/img/otros/Aplicaciones/NGS/NGS001.jpg">
]
 

---

.left-column[

### Tecnologías NGS


]
.right-column[
<br><br>
Unas cuantas empresas iniciaron la carrera tecnológica
NGS, ofreciendo plataformas diferentes, químicas diferentes,
archivos de salida diferentes, etc...

<img src="Images/NGS_tech.png">
]
 

---

.left-column[

### Illumina

]
.right-column[
<br><br>
#### Proceso General

1. Fragmentación de la muestra

2. Etiquetado y separación de fragmentos

3. Amplificación clonal

4. Interrogación ciclica de bases

]
 

---
<br><br><br>
<img src="Images/fragmentacion.png" width="100%">
---

<br><br><br>
<img src="Images/etiquetado.png" width="100%">
---

<br><br><br>
<img src="Images/amplificacion.png" width="100%">
---

<br><br><br>
<img src="Images/interrogacion.png" width="100%">

---

<br><br><br>
<img src="Images/seq_pareadas.png" width="100%">

---

<br><br><br>
<img src="Images/single_vs_pair.png" width="100%">

---

<br><br><br>
<img src="Images/ion_torrent.png" width="100%">

---

<br><br><br>
<img src="Images/ion_torrent2.png" width="100%">

---

<br><br><br>
<img src="Images/pacbio.png" width="100%">

---

<br><br><br>
<img src="Images/pacbio2.png" width="100%">

---

<br><br><br>
<img src="Images/nanopore.png" width="100%">

---

<br><br><br>
<img src="Images/nanopore2.png" width="100%">

---


template:inverse

# Workflow General para análisis diferencial
---

<br><br><br>
<img src="Images/nanopore2.png" width="100%">

---





name: last-page
template: inverse

## That's all folks (for now)!
### [fmunoz@lcg.unam.mx](mailto:fmunoz@lcg.unam.mx)

.footnote[Descargar Presentación http://pipemg.github.io/slides/Bernet_1999.html]


