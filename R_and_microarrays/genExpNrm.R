## ----eval=TRUE, echo=FALSE-------------------------------------------------
## Note, this workflow requires R version 3.3.1 or later, which can be installed from https://cran.r-project.org/bin/windows/base/
## Load required packages from: BiocLite

source("https://bioconductor.org/biocLite.R")
biocLite()
## You may get messages letting you know which packages are old or masked, and asking you whether to update all, some, or none of the packages

## BiocGenerics and parallel will be installed, while various packages are masked, and you are welcomed to Bioconductor

## Load the Expression Normalization Workflow from Bioconductor
library(ExpressionNormalizationWorkflow)
library(Biobase)

## ----eval=FALSE, echo=TRUE-------------------------------------------------
#  ## Set your working directory (or use Control + Shift + H to choose it)
#  setwd("working directory")
#  ## read in the file containing the gene expression values
#  expData_file_name <- system.file("folder containing the data", "CAD_Expression.csv", package="ExpressionNormalizationWorkflow")
#  exprs <- read.table(expData_file_name, header=TRUE, sep=",", row.names=1, as.is=TRUE)
#  ## read in the file containing the covariates
#  expDesign_file_name <- system.file("folder containing the data", "CAD_ExptDsgn.csv", package="ExpressionNormalizationWorkflow")
#  covrts <- read.table(expDesign_file_name, header=TRUE, sep=",", row.names=1, as.is=TRUE)
#  

## ----eval=TRUE, echo=FALSE-------------------------------------------------
## read in the file containing the gene expression values
exprs_path <- system.file("extdata", "CAD_Expression.csv", package="ExpressionNormalizationWorkflow")
exprs <- read.table(exprs_path, header=TRUE, sep=",", row.names=1, as.is=TRUE)
## read in the file containing the covariates
covrts_path <- system.file("extdata", "CAD_ExptDsgn.csv", package="ExpressionNormalizationWorkflow")
covrts <- read.table(covrts_path, row.names=1, header=TRUE, sep=",")
## Confirm that the Expression data and the Covariates/Experimental design data is correctly uploaded
## You can also view the complete Covariate matrix with - View(covrts)
exprs[1:5, 1:5]
covrts[1:5, 1:10]
#View(covrts)

## ----eval=TRUE-------------------------------------------------------------
inpData <- expSetobj(exprs, covrts)

## ----eval=TRUE-------------------------------------------------------------
## Set the covariates whose effect size on the data needs to be calculated
cvrts_eff_var <- c("CAD", "BMI3", "Rin3", "Gender", "Study")
## Set a PVCA Threshold Value between 0 & 1
## PVCA Threshold Value is the percentile value of the minimum amount of the variabilities that the selected principal components need to explain, here requiring 75% of the expression variance to be captured by the PCs
pct_thrsh <- 0.75 
## Perform the PVCA analysis
pvcAnaly(inpData, pct_thrsh, cvrts_eff_var)

## ----eval=TRUE-------------------------------------------------------------
## Choose a biological variable that is to be used to calculate the surrogate variables
biol_var_sva <- "CAD" 
## Perform SVA
sur_var_obj <- surVarAnaly(inpData, biol_var_sva)
## The newly generated surrogate variables sv1 through sv4 are appended to the ExpressionSet object
inpData_sv <- sur_var_obj$expSetobject

## ----eval=TRUE-------------------------------------------------------------
## Fit a generalized linear model for sv1
glm.sv1 <- glm(pData(inpData_sv)[,"sv1"]~pData(inpData_sv)[,"BMI"]+pData(inpData_sv)[,"Rin"]+pData(inpData_sv)[,"CAD"]
               +pData(inpData_sv)[,"Study"]) 
summary(glm.sv1)

## ----eval = TRUE-----------------------------------------------------------
## Fit a generalized linear model for sv2
glm.sv2 <- glm(pData(inpData_sv)[,"sv2"]~pData(inpData_sv)[,"BMI"]+pData(inpData_sv)[,"Rin"]+pData(inpData_sv)[,"CAD"]
               +pData(inpData_sv)[,"Study"]) 
summary(glm.sv2)
## Output should be similar to that shown above for sv1

## ----eval=TRUE-------------------------------------------------------------

## First discretize the continuous surrogate variables 
var_names <- c("sv1", "sv2", "sv3", "sv4") 
pData(inpData_sv)<-conTocat(pData(inpData_sv), var_names) 
## View them appended to the covariate matrix as additional covariate columns
#View(pData(inpData_sv))
## Include the surrogate variables as covariates in addition to BMI3, Rin3, CAD and Study (be sure to use categorical measures of BMI and Rin rather than the continuous measure)
cvrts_eff_var <- c("BMI3", "Rin3", "CAD", "Study", "sv1_cat", "sv2_cat", "sv3_cat", "sv4_cat")
## Again set the PVCA Threshold to explain 75% of the expression variation
pct_thrsh <- 0.75 
## Perform PVCA
pvcAnaly(inpData_sv, pct_thrsh, cvrts_eff_var) 

## ----eval=TRUE-------------------------------------------------------------
cvrts_eff_var <- c("BMI3", "Rin3", "CAD","sv1_cat", "sv2_cat", "sv3_cat", "sv4_cat")
## Again set the PVCA Threshold to explain 75% of the expression variation
pct_thrsh <- 0.75 
## Perform PVCA
pvcAnaly(inpData_sv, pct_thrsh, cvrts_eff_var)


## ----eval=TRUE-------------------------------------------------------------
## Choose the biological variableof interest
bv <- c("CAD")
## Choose your adjustment variable of interest, starting with just 'Study'
av <- c("Study") 
## The intensity-dependent adjustment variables adjust for array effects 
iv <- c("Array") 
## Run SNM
sv_snmObj <- snmAnaly(exprs, pData(inpData_sv), bv, av, iv) 

## ----eval=FALSE, echo=TRUE-------------------------------------------------
#  ## Now choose the adjustment variables to be all four SVs plus Rin
#  av <- c("Rin", "sv1", "sv2", "sv3", "sv4")
#  ## Run SNM
#  sv_snmObj <- snmAnaly(exprs, pData(inpData_sv), bv, av, iv)

## ----eval=TRUE, echo=TRUE--------------------------------------------------
av <- c("Rin", "sv2", "Study")
sv_snmObj <- snmAnaly(exprs, pData(inpData_sv), bv, av, iv)

## ----eval=TRUE-------------------------------------------------------------
## Create an expressionSet object of the normalized dataset(s)
sv_snmNorm_data <- sv_snmObj$norm.dat
colnames(sv_snmNorm_data) <- colnames(exprs)
sv_snm_data <- expSetobj(sv_snmNorm_data, pData(inpData_sv))

## Write this dateset to a table with rows as genes and columns as samples (with names the same as that from the input file)
write.table(sv_snmNorm_data, file="CAD_SNM.csv", sep=",")

## ----eval=TRUE-------------------------------------------------------------
## Specify the covariates whose effect size is to be calculated
cvrts_eff_var <- c("BMI3", "Rin3", "CAD", "sv1_cat", "sv2_cat","sv3_cat", "sv4_cat")
## If needed, keep the same PC Threshold Value
pct_thrsh <- 0.75 
## Perform PVCA
pvcAnaly(sv_snm_data, pct_thrsh, cvrts_eff_var)

