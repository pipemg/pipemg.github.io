## ---- echo=FALSE, results="hide", warning=FALSE----------------------------
suppressPackageStartupMessages({
library('arrays')
})

## ----echo=FALSE------------------------------------------------------------
suppressPackageStartupMessages(library(limma))
suppressPackageStartupMessages(library(affy))

## --------------------------------------------------------------------------
## Load packages
library(affy)   # Affymetrix pre-processing
library(limma)  # two-color pre-processing; differential
                  # expression
                
## import "phenotype" data, describing the experimental design
phenoData <- 
    read.AnnotatedDataFrame(system.file("extdata", "pdata.txt",
    package="arrays"))

## RMA normalization
celfiles <- system.file("extdata", package="arrays")
eset <- justRMA(phenoData=phenoData,
    celfile.path=celfiles)

## differential expression
combn <- factor(paste(pData(phenoData)[,1],
    pData(phenoData)[,2], sep = "_"))
design <- model.matrix(~combn) # describe model to be fit

fit <- lmFit(eset, design)  # fit each probeset to model
efit <- eBayes(fit)        # empirical Bayes adjustment
topTable(efit, coef=2)      # table of differentially expressed probesets

## ----eval=FALSE------------------------------------------------------------
#  ## try http:// if https:// URLs are not supported
#  source("https://bioconductor.org/biocLite.R")
#  biocLite(c("affy", "limma"))

## ----eval=FALSE------------------------------------------------------------
#  ## try http:// if https:// URLs are not supported
#  source("https://bioconductor.org/biocLite.R")
#  biocLite("hgu95av2.db")

## ----eval=FALSE------------------------------------------------------------
#  library("affy")
#  library("limma")

## ----eval=FALSE------------------------------------------------------------
#  browseVignettes(package="limma")

## ----eval=FALSE------------------------------------------------------------
#  help.start()

## --------------------------------------------------------------------------
sessionInfo()

