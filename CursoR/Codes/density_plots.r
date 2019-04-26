shinyApp(
  ui = tagList(
    shinythemes::themeSelector(),
    navbarPage("Distribuciones Discretas",

      tabPanel("Uniforme",
        sidebarPanel(
          numericInput("n1", "Numero de Puntos:", "20"),
          sliderInput("a_b1", "[a,b]:", 1, 1000, c(100,150))        
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Uniforme Discreta"),
              plotOutput("plotDisUnif")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaDisUnif"), verbatimTextOutput("varDisUnif"),verbatimTextOutput("sdDisUnif"),verbatimTextOutput("rangoDisUnif")),
            tabPanel("Valores", verbatimTextOutput("valDisUnif"))
          )
        )
      ),

      tabPanel("Binomial",
        sidebarPanel(
          numericInput("n2", "Numero de Puntos:", "20"),
          numericInput("size2", "Numero de Intentos:", "5"),
          sliderInput("prob2", "Probabilidad (p):", min=0, max=1, value="0.5")        
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Binomial"),
              plotOutput("plotDisBinom")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaDisBinom"), verbatimTextOutput("varDisBinom"),verbatimTextOutput("sdDisBinom"),verbatimTextOutput("rangeDisBinom")),
            tabPanel("Valores", verbatimTextOutput("valDisBinom"))
          )
        )
      ),

      tabPanel("Geometrica",
        sidebarPanel(
          numericInput("n3", "Numero de Puntos:", "20"),
	  sliderInput("prob3", "Probabilidad (p):", min=0, max=1, value="0.5")  
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Geométrica"),
              plotOutput("plotDisGeo")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaDisGeo"), verbatimTextOutput("varDisGeo"),verbatimTextOutput("sdDisGeo"),verbatimTextOutput("rangeDisGeo")),
            tabPanel("Valores", verbatimTextOutput("valDisGeo"))
          )
        )
      ),

      tabPanel("Binomial Negativa", 
	sidebarPanel(
          numericInput("n4", "Numero de Puntos:", "100"),
          numericInput("size4", "Numero de pruebas exitosas:", "5"),
	  sliderInput("prob4", "Probabilidad (p):", min=0, max=1, value="0.5")  
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Binomial Negativa"),
              plotOutput("plotDisnBinom")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaDisnBinom"), verbatimTextOutput("varDisnBinom"),verbatimTextOutput("sdDisnBinom"),verbatimTextOutput("rangeDisnBinom")),
            tabPanel("Valores", verbatimTextOutput("valDisnBinom"))
          )
        )
      ),

      tabPanel("Poisson",
        sidebarPanel(
          numericInput("lambda5", "Valor de lambda:", "5"),
          numericInput("k5", "Valor de k(numero de eventos):", "20")
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Distribución de Poisson"),
              plotOutput("plotPois")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaPois"), verbatimTextOutput("varPois"),verbatimTextOutput("sdPois"),verbatimTextOutput("rangePois")),
            tabPanel("Valores", verbatimTextOutput("valPois"))
          )
        )
      ),

      tabPanel("Navbar 3", "This panel is intentionally left blank")
    )
  ),

  server = function(input, output) {





#Grafica 1

#plotOutput("plotDisUnif")
#verbatimTextOutput("mediaDisUnif")
#verbatimTextOutput("varDisUnif")
#verbatimTextOutput("sdDisUnif")
#verbatimTextOutput("rangoDisUnif")
#verbatimTextOutput("valDisUnif")

     output$plotDisUnif <- renderPlot({
        x<-runif(n=input$n1,min=input$a_b1[1],max=input$a_b1[2])
	output$valDisUnif<-renderPrint(as.vector(x))
	output$mediaDisUnif<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varDisUnif<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$sdDisUnif<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$rangoDisUnif<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(input$a_b1[1]*.8,input$a_b1[2]*1.1),main="Distribución Uniforme Discreta")
        polygon(density(x), col="orange", border="black")
	abline(v=mean(x),col="orange")
      })


#Grafica 2

#plotOutput("plotDisBinom")
#verbatimTextOutput("mediaDisBinom")
#verbatimTextOutput("varDisBinom")
#verbatimTextOutput("sdDisBinom")
#verbatimTextOutput("rangeDisBinom")
#verbatimTextOutput("valDisBinom")


     output$plotDisBinom <- renderPlot({
        x<-rbinom(n=input$n2,size=input$size2,prob=input$prob2)
	output$valDisBinom<-renderPrint(as.vector(x))
	output$mediaDisBinom<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varDisBinom<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$sdDisBinom<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$rangeDisBinom<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(min(x)*.8,max(x)*1.1),main="Distribución Normal")
        polygon(density(x), col="blue", border="black")
	abline(v=mean(x),col="red")
      })


#Grafica 3

#plotOutput("plotDisGeo")
#verbatimTextOutput("mediaDisGeo")
#verbatimTextOutput("varDisGeo")
#verbatimTextOutput("sdDisGeo")
#verbatimTextOutput("rangeDisGeo")
#verbatimTextOutput("valDisGeo")


     output$plotDisGeo <- renderPlot({
        x<-rgeom(input$n3,input$prob3)
	output$valDisGeo<-renderPrint(as.vector(x))
	output$mediaDisGeo<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varDisGeo<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$sdDisGeo<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$rangeDisGeo<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(min(x)*.8,max(x)*1.1),main="Distribución Normal")
        polygon(density(x), col="blue", border="black")
	abline(v=mean(x),col="red")
      })

#Grafica 4

#plotOutput("plotDisnBinom")
#verbatimTextOutput("mediaDisnBinom")
#verbatimTextOutput("varDisnBinom")
#verbatimTextOutput("sdDisnBinom")
#verbatimTextOutput("rangeDisnBinom")
#verbatimTextOutput("valDisnBinom")


          numericInput("n4", "Numero de Puntos:", "100"),
          numericInput("size4", "Numero de pruebas exitosas:", "5"),
	  sliderInput("prob4", "Probabilidad (p):", min=0, max=1, value="0.5")  

     output$plotDisnBinom <- renderPlot({
        x<-rnbinom(input$n4,input$size,input$prob)
	output$valDisnBinom<-renderPrint(as.vector(x))
	output$mediaDisnBinom<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varDisnBinom<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$sdDisnBinom<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$rangeDisnBinom<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(min(x)*.8,max(x)*1.1),main="Distribución Normal")
        polygon(density(x), col="blue", border="black")
	abline(v=mean(x),col="red")
      })

#Grafica 5

#plotOutput("plotPois")
#verbatimTextOutput("mediaPois")
#verbatimTextOutput("varPois")
#verbatimTextOutput("sdPois")
#verbatimTextOutput("rangePois")
#verbatimTextOutput("valPois")


     output$plotPois <- renderPlot({
        x<-rpois(input$lambda5,input$k5)
	output$valPois<-renderPrint(as.vector(x))
	output$mediaPois<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varPois<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$sdPois<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$rangePois<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(min(x)*.8,max(x)*1.1),main="Distribución Normal")
        polygon(density(x), col="blue", border="black")
	abline(v=mean(x),col="red")
      })

    
  }
)
