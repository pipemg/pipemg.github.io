# ANOVA for two or more categorical factors

resultados<-c(24.15,24.50,25.10,22.55,22.65,26.85,40.20,63.20,79.60,59.10, 64.60,102.45,36.30,44.10,39.15,49.90,50.35,50.60,31.7,69.25,138.60,72.95, 80.05,90.3,19.35,21.90,31.10,15.4,18.30,27.10,22.15,22.15,22.75,66.7,19.35,37.85)


droga <- gl(3,12,36,labels=c("Droga A", "Droga B", "Droga C")) #droga <- factor(rep(c("Droga A", "Droga B", "Droga C"),c(12,12,12)))

peso <- gl(2,6,36,labels=c("Normal", "sobre peso")) # peso <- factor(rep(rep(c("Normal", "sobre peso"),c(6,6)),3))


df<-data.frame(resultados,droga,peso)


anova(lm(df$resultados ~ df$droga + df$peso)) # Es un modelo lineal aditivo que no supone una relación entre el tipo de droga y el peso (los factores son independientes). El efecto de células es explicado por la droga y el peso. 

# Df indica los grados de libertad
# El factor droga tiene un efecto significativo en las células al tener el peso constante
# El factor peso tiene un efecto significativo en las células al tener la droga constante

# MODELO SATURADO CUANDO LOS DOS FACTORES NO SON INDEPENDIENTES

interaction.plot(droga,peso,resultados) #Factores a estudiar y variable respuesta

#Se ven las lineas casi paralelas pero los datos nos dicen que en la Droga C puede haber una interación

interaction.plot(peso,droga,resultados) # Ya que la droga C no es paralela puedes suponer una interacción

anova(lm(resultados ~ droga*peso)) #Busca una interacción entre la droga y el peso.

# La droga y el peso afectan el efecto independiente pero no en conjunto.



######################################################


data<-read.csv("/home/fmunoz/git/pipemg.github.io/CursoR_INMEGEN/Codes/twan02.csv", sep="\t")

sites <- gl(7,3,21, labels=data$Site)

deep  <- gl(3,1,21,labels=colnames(data[,-1]))

prom  <- as.vector(unlist(t(data[,-1])))

anova(lm(prom ~ deep + sites))



data1<-rnorm(100,29,1)
data2<-rnorm(100,30,1)

data<-c(data1,data2)
data<-data + rep(c(0,5),times=100)

facA<-factor(c(rep("FacA",times=100),rep("FacB",times=100)))
facB<-gl(2,1,200,labels=c("Fac1","Fac2"))


anova(lm(data ~ facA*facB))

