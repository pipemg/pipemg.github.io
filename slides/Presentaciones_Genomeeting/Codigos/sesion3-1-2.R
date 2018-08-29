## ---- echo=FALSE, results = 'hide'---------------------------------------
options(width=50)
library('knitr')

## ---- eval = FALSE-------------------------------------------------------
## source("https://bioconductor.org/biocLite.R")
## biocLite(c("vsn", "EnsDb.Hsapiens.v75"))

## ------------------------------------------------------------------------

path <- "."

countMatrixFile <- 
  file.path( path, "genomeeting_counts.tsv" )

countMatrixFile

sampleAnnotationFile <- 
  file.path( path, "genomeeting_sample_summary.tsv" )

sampleAnnotationFile


## ------------------------------------------------------------------------
countMatrix <- read.delim( countMatrixFile, row.names=1 )
head( countMatrix )

## ------------------------------------------------------------------------
annotation <- read.delim( sampleAnnotationFile )
head( annotation )

## ------------------------------------------------------------------------
all( colnames( countMatrix ) == annotation$Run )

## ------------------------------------------------------------------------
suppressMessages( library('DESeq2') )
dsd <- DESeqDataSetFromMatrix( 
  countData = countMatrix, colData = annotation,
  design = ~ dex,
  )
dsd

## ----'summmarizedexperiment', out.width = "800px", echo = FALSE----------
include_graphics("img_sesion3-1-2/summarizedexperiment.png")

## ------------------------------------------------------------------------

head( counts( dsd ) )


## ------------------------------------------------------------------------
colData( dsd )[,c("Run", "Sample", "dex")]

## ------------------------------------------------------------------------
rowRanges( dsd )

## ------------------------------------------------------------------------
mcols( dsd )

## ------------------------------------------------------------------------
dsdSubset <- dsd[,1:4]
dim( counts( dsdSubset ) )
dim( colData( dsdSubset ) )

## ------------------------------------------------------------------------
counts(dsd)['ENSG00000003137', 'SRR1039521']
colData(dsd)$Experiment[colData(dsd)$Run == 'SRR1039512']

## ---- fig.width=4.5, fig.height=4----------------------------------------
hasCounts <- rowSums( counts(dsd) > 0 ) == ncol(dsd)
boxplot( log2( counts( dsd )[hasCounts,] + 1 ) , las=2,
  ylab="Fragmentos secuenciados", srt = 45)

## ---- fig.width=4.5, fig.height=4----------------------------------------
dsd <- estimateSizeFactors( dsd )

sizeFactors( dsd )

colData( dsd )[, "sizeFactor"]

## ------------------------------------------------------------------------
boxplot( log2( 
    counts( dsd, normalized = TRUE )[hasCounts,] + 1 ) , las=2,
    ylab="Fragmentos secuenciados", srt = 45)

## ------------------------------------------------------------------------
dsd <- estimateDispersions( dsd )

## ---- fig.width=4.5, fig.height=4----------------------------------------
plotDispEsts( dsd )

## ------------------------------------------------------------------------
rowData(dsd)[,
    grepl('disp', colnames(rowData(dsd)))
]

## ------------------------------------------------------------------------
dsd <- nbinomWaldTest( dsd )
res1 <- results( dsd )

## ------------------------------------------------------------------------
summary( res1 )

## ---- fig.width=4, fig.height=4------------------------------------------
plotCounts(dsd, 
           gene=rownames(res1)[which.min(res1$padj)],
           intgroup="dex")

## ---- fig.width=4.5, fig.height=4----------------------------------------
plotMA( res1 )

## ------------------------------------------------------------------------
colData( dsd )[, c( "cell", "dex" ) ]

## ------------------------------------------------------------------------
dsdSimple <- dsd
design( dsd ) <-  ~ cell + dex
dsd <- estimateDispersions( dsd )
dsd <- nbinomWaldTest( dsd )

## ------------------------------------------------------------------------
res2 <- results( dsd, 
                 contrast=c( "dex", "trt", "untrt" ) )
table( 'complex'=res2$padj < 0.1, 'simple'=res1$padj < 0.1 )

## ------------------------------------------------------------------------
design( dsd ) <-  ~ cell * dex
dsd <- estimateDispersions( dsd )
dsd <- nbinomWaldTest( dsd )

## ------------------------------------------------------------------------
colData( dsd )[,c( "cell", "dex" )]

## ------------------------------------------------------------------------
resultsNames( dsd )
res4 <- results( dsd, list( 
    "cellN61311.dexuntrt", 
    "cellN080611.dexuntrt") )

## ------------------------------------------------------------------------
summary( res4 )

## ------------------------------------------------------------------------
design(dsd) <- ~ cell + dex
dsd <- DESeq(dsd)

## ---- fig.width=5.5, fig.height=3----------------------------------------
suppressMessages(library('vsn'))
notAllZero <- (rowSums(counts(dsd))>0)
meanSdPlot( 
  log2( counts( dsd, normalized=TRUE )[notAllZero,] + 1), 
  ranks=FALSE)

## ------------------------------------------------------------------------
rld <- rlog( dsd )
vsd <- varianceStabilizingTransformation(dsd)

## ------------------------------------------------------------------------
meanSdPlot(assays(rld)[[1]], ranks = FALSE)

## ------------------------------------------------------------------------
meanSdPlot(assays(vsd)[[1]], ranks = FALSE)

## ----'plotma'------------------------------------------------------------
plotMA(dsd)

## ----'plotma-info', eval = FALSE-----------------------------------------
## ?plotMA

## ----'plotma-custom'-----------------------------------------------------
res <- results(dsd, alpha = 0.05)
top <- head(order(res$padj), n = 4)
plotMA(dsd, alpha=0.05, main='4 genes', ylim = c(-5, 5))
with(res[top, ], {
  points(baseMean, log2FoldChange, col="dodgerblue", cex=2)
  text(baseMean, log2FoldChange, rownames(res)[top], pos=2,
      col="dodgerblue")
})

## ------------------------------------------------------------------------
prueba <- rlog(makeExampleDESeqDataSet(betaSD=1))
plotPCA(prueba)

## ------------------------------------------------------------------------
plotPCA(rld, intgroup = 'avgLength')

## ------------------------------------------------------------------------
plotPCA(rld, intgroup = 'dex')

## ------------------------------------------------------------------------
plotPCA(rld, intgroup = 'cell')

## ------------------------------------------------------------------------
plotPCA(rld, intgroup = c('cell', 'dex'))

## ------------------------------------------------------------------------
rv <- matrixStats::rowVars(assay(rld))
select <- order(rv, decreasing=TRUE)[seq_len(500)]
pca <- prcomp(t(assay(rld)[select, ]))
percentVar <- pca$sdev^2 / sum( pca$sdev^2 ) * 100
names(percentVar) <- paste0('PC', seq_len(length(percentVar)))

## ------------------------------------------------------------------------
plot(percentVar, type = 'o', pch = 21, cex = 2,
    xlab = '', ylab = 'Porcentaje de varianza explicada',
    col = 'blue', lwd = 2)

## ------------------------------------------------------------------------
library('EnsDb.Hsapiens.v75')
genes <- genes(EnsDb.Hsapiens.v75)

## ------------------------------------------------------------------------
genes

## ------------------------------------------------------------------------
## Re-ordenar
genes <- genes[match(rownames(dsd), names(genes))]
genes$pvalue <- -log10(res$padj)
length(genes)
genes <- keepSeqlevels(genes, c(1:22, 'X', 'Y'))
length(genes)

## ------------------------------------------------------------------------
library('ggbio')

## ---- warning = FALSE----------------------------------------------------
plotGrandLinear(genes, aes(y = pvalue))

## ------------------------------------------------------------------------
plotCounts(dsd, gene = top[1], intgroup = 'dex',
    col = 'red', pch = 16)

## ------------------------------------------------------------------------
plotCounts(dsd, gene = top[2], intgroup = 'dex',
    col = 'red', pch = 16)

## ---- message = FALSE, warning = FALSE-----------------------------------
library('pheatmap')
df <- as.data.frame(colData(dsd)[, c('cell', 'dex')])
pheatmap(assay(rld)[select[1:20],], cluster_rows=TRUE,
    show_rownames=FALSE, cluster_cols=FALSE, annotation_col=df)

## ------------------------------------------------------------------------
select <- order(rowMeans(counts(dsd, normalized=TRUE)), decreasing=TRUE)
pheatmap(assay(rld)[select[1:20],], cluster_rows=FALSE,
    show_rownames=FALSE, cluster_cols=FALSE, annotation_col=df)

## ------------------------------------------------------------------------
select <- order(res$padj, decreasing = FALSE)
diferentes <- assay(rld)[select[1:20], ]
pheatmap(diferentes, cluster_rows=TRUE,
    show_rownames=TRUE, cluster_cols=FALSE, annotation_col=df)

## ------------------------------------------------------------------------
library('org.Hs.eg.db')
coll <- function(x) { paste(x, collapse = '-')}
simbolos <- mapIds(org.Hs.eg.db, 
    keys = rownames(diferentes), column = 'SYMBOL',
    keytype = 'ENSEMBL', multiVals = coll)
simbolos[1:2]

## Cambiamos los nombres de los genes
rownames(diferentes) <- simbolos

## ------------------------------------------------------------------------
pheatmap(diferentes, cluster_rows=TRUE,
    show_rownames=TRUE, cluster_cols=FALSE, annotation_col=df)

## ---- echo = FALSE, results = 'hide'-------------------------------------
library('regionReport')

## ---- eval = FALSE-------------------------------------------------------
## library('regionReport')
## DESeq2Report(dds = dsd, intgroup = c('cell', 'dex'),
##     nBest = 20, nBestFeatures = 2,
##     customCode = file.path(getwd(), 'conclusiones.md'))

## ----'session_info', echo = FALSE----------------------------------------
library('devtools'); options(width = 120); session_info()$platform

## ----'session_info2', echo = FALSE---------------------------------------
head(session_info()$packages, n = 28)

## ----'session_info3', echo = FALSE---------------------------------------
head(tail(session_info()$packages, 28 * 2), 28)

## ----'session_info4', echo = FALSE---------------------------------------
head(tail(session_info()$packages, 28 * 3), 28)

## ----'session_info5', echo = FALSE---------------------------------------
head(tail(session_info()$packages, 28 * 4), 28)

## ----'session_info6', echo = FALSE---------------------------------------
tail(session_info()$packages, nrow(session_info()$packages) - 28 * 4)

