shinyApp(
  ui = tagList(
    shinythemes::themeSelector(),
    navbarPage("Plots",
      tabPanel("Uniforme Discreta",
        sidebarPanel(
          #fileInput("file", "File input:"),
          numericInput("n1", "Numero de Puntos:", "20"),
          sliderInput("a_b1", "[a,b]:", 1, 1000, c(100,150))        
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Uniforme Discreta"),
              plotOutput("densityplot1")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaplot1"), verbatimTextOutput("varianzaplot1"),verbatimTextOutput("stplot1"),verbatimTextOutput("range1")),
            tabPanel("Valores", verbatimTextOutput("valuesplot1"))
          )
        )
      ),
      tabPanel("Distribución Normal", 
	sidebarPanel(
          #fileInput("file", "File input:"),
          numericInput("n2", "Numero de Puntos:", "100"),
          numericInput("m2", "Media:", "20"),
          numericInput("s2", "Desviación:", "1")
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Gráfica",
              h4("Normal"),
              plotOutput("densityplot2")
            ),
	    tabPanel("Datos", verbatimTextOutput("mediaplot2"), verbatimTextOutput("varianzaplot2"),verbatimTextOutput("stplot2"),verbatimTextOutput("range2")),
            tabPanel("Valores", verbatimTextOutput("valuesplot2"))
          )
        )
      ),
      tabPanel("Navbar 3", "This panel is intentionally left blank")
    )
  ),
  server = function(input, output) {
     output$densityplot1 <- renderText({
        x<-runif(input$n1,min=input$a_b1[1],max=input$a_b1[2])
	output$valuesplot1<-renderPrint(as.vector(x))
	output$mediaplot1<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varianzaplot1<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$stplot1<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$range1<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(input$a_b1[1]*.8,input$a_b1[2]*1.1),main="Distribución Uniforme Discreta")
        polygon(density(x), col="orange", border="black")
	abline(v=mean(x),col="orange")
      })
     output$densityplot2 <- renderText({
        x<-rnorm(input$n2,input$m2,input$s2)
	output$valuesplot2<-renderPrint(as.vector(x))
	output$mediaplot2<-renderPrint(paste0("Mediana=",mean(x),collapse=""))
	output$varianzaplot2<-renderPrint(paste0("Varianza=",var(x),collapse=""))
	output$stplot2<-renderPrint(paste0("Desviación=",sd(x),collapse=""))
	output$range2<-renderPrint(paste0("Rango=",range(x),collapse=""))
        plot(density(x), xlim=c(min(x)*.8,max(x)*1.1),main="Distribución Normal")
        polygon(density(x), col="blue", border="black")
	abline(v=mean(x),col="red")
      })
    
  }
)
