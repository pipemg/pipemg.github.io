## ---- echo = FALSE, results = 'hide'-------------------------------------
library('knitr')

## ----'graficar_encuesta'-------------------------------------------------
x <- c('R' = 30, 'paquete' = 20, 'bioc' = 10)
x <- x / max(x) * 100
barplot(x)

## ----'info_max', eval = FALSE--------------------------------------------
## ?max
## ?barplot

## ----'stats_pkg', eval = FALSE-------------------------------------------
## help(package = 'stats')

## ----'bioc-landing', out.width = "800px", echo = FALSE-------------------
include_graphics("img_sesion1-3/bioc-landing.png")

## ----'nihms-661499-f0003', out.width = "800px", echo = FALSE-------------
include_graphics("img_sesion1-3/nihms-661499-f0003.jpg")

## ----'biocview', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/biocview.png")

## ----'biocview-de', out.width = "800px", echo = FALSE--------------------
include_graphics("img_sesion1-3/biocview-de.png")

## ----'biocview-dexseq', out.width = "800px", echo = FALSE----------------
include_graphics("img_sesion1-3/biocview-dexseq.png")

## ----'workflow', out.width = "700px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/workflow.png")

## ----'workflow-seq', out.width = "700px", echo = FALSE-------------------
include_graphics("img_sesion1-3/workflow-seq.png")

## ----'workflow-seq2', out.width = "700px", echo = FALSE------------------
include_graphics("img_sesion1-3/workflow-seq2.png")

## ----'workflow-seq3', out.width = "800px", echo = FALSE------------------
include_graphics("img_sesion1-3/sequencepkg.png")

## ----'dexseq-1', out.width = "700px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/dexseq-1.png")

## ----'dexseq-2', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/dexseq-2.png")

## ----'dexseq-vignette', out.width = "700px", echo = FALSE----------------
include_graphics("img_sesion1-3/dexseq-vignette.png")

## ----'dexseq-3', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/dexseq-3.png")

## ----'dexseq-4', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/dexseq-4.png")

## ----'pheatmap', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/pheatmap.png")

## ----'cran-install', eval = FALSE----------------------------------------
## install.packages('pheatmap')

## ----'bioc-install', eval = FALSE----------------------------------------
## ## try http:// if https:// URLs are not supported
## source("https://bioconductor.org/biocLite.R")
## biocLite("DEXSeq")

## ----'bioc-inst-more', eval = FALSE--------------------------------------
## biocLite(c('DESeq2', 'edgeR', 'limma'))

## ---- 'load-deseq2'------------------------------------------------------
library('DESeq2')

## ----'deseq2-helpinfo', eval = FALSE-------------------------------------
## help(package = "DESeq2")

## ----'deseq2-help', out.width = "800px", echo = FALSE--------------------
include_graphics("img_sesion1-3/deseq2-help.png")

## ----'deseq-helpinfo', eval = FALSE--------------------------------------
## ?DESeq

## ----'deseq-exampledata'-------------------------------------------------
# see vignette for suggestions on generating
# count tables from RNA-Seq data
cnts <- matrix(rnbinom(n=1000, mu=100, size=1/0.5), ncol=10)
cond <- factor(rep(1:2, each=5))

## ----'deseq-exploredata'-------------------------------------------------
## Exploremos los datos
dim(cnts)
head(cnts[1:2, 1:5])
cond

## ------------------------------------------------------------------------
# object construction
dds <- DESeqDataSetFromMatrix(cnts, DataFrame(cond), ~ cond)

## ------------------------------------------------------------------------
class(dds)
dds

## ------------------------------------------------------------------------
# standard analysis
dds <- DESeq(dds)

## ------------------------------------------------------------------------
dds

## ------------------------------------------------------------------------
res <- results(dds)
res

## ----'example-fun'-------------------------------------------------------
example('DESeq', package = 'DESeq2')

## ----'exercise', echo = FALSE--------------------------------------------
set.seed(20161018)
library('org.Hs.eg.db')
uniprot <- sample(keys(org.Hs.eg.db, keytype="UNIPROT"), size = 6)
kable(uniprot, format = 'html')

## ----'org', out.width = "800px", echo = FALSE----------------------------
include_graphics("img_sesion1-3/org.png")

## ----'org-details', out.width = "800px", echo = FALSE--------------------
include_graphics("img_sesion1-3/org-details.png")

## ----'annotation', out.width = "800px", echo = FALSE---------------------
include_graphics("img_sesion1-3/annotation.png")

## ----'annotation-details', out.width = "800px", echo = FALSE-------------
include_graphics("img_sesion1-3/annotation-details.png")

## ----'annotation-vignette', out.width = "800px", echo = FALSE------------
include_graphics("img_sesion1-3/annotation-vignette.png")

## ----'solucion'----------------------------------------------------------
library('org.Hs.eg.db')
uniprot <- c('P61968', 'B2RC63', 'A0A024R9I0',
    'Q13394', 'Q8NGN1', 'P58417')
select(org.Hs.eg.db, keys = uniprot,
    columns = 'SYMBOL', keytype = 'UNIPROT')

## ----'support', out.width = "800px", echo = FALSE------------------------
include_graphics("img_sesion1-3/support.png")

## ----'support2', out.width = "800px", echo = FALSE-----------------------
include_graphics("img_sesion1-3/support2.png")

## ----'mala-pregunta', out.width = "800px", echo = FALSE------------------
include_graphics("img_sesion1-3/mala-pregunta.png")

## ----'sessionInfo'-------------------------------------------------------
sessionInfo()

## ----'session_info'------------------------------------------------------
library('devtools'); options(width = 120); session_info()

## ----'error info', eval = FALSE------------------------------------------
## library('IRanges')
## IRanges('a')
## traceback()

## ----'courses', out.width = "800px", echo = FALSE------------------------
include_graphics("img_sesion1-3/courses.png")

