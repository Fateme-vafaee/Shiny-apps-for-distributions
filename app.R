#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI for application that draws a histogram
library(shinydashboard)
library(shinyjs)
library(shiny)


ui <- dashboardPage(
    
    dashboardHeader(title ="PMF AND CDF"),
    
    dashboardSidebar(
        
        useShinyjs(),  # Set up shinyjs
        selectInput("selectedDist","Select the distribution",
                    choices = c("","Bernoulli","Binomial","Hypergeometric","Geometric","Negative Binomial")),
        #---------------------------
        source("Distributions/BernoulliIU.R")[1],
        source("Distributions/BinomialIU.R")[1],
        source("Distributions/HypergeometricUI.R")[1],
        source("Distributions/GeometricUI.R")[1],
        source("Distributions/Negative_BinomialUI.R")[1]
    ),
    
    
    
    #mainPanel(paste("main panel"),plotOutput("distPlot"))
    dashboardBody(
        box(background = "navy", width = "100%",plotOutput("PMFPlot")),
        box(background = "navy", width = "100%",plotOutput("CDFPlot")),
        box(background = "navy", width = "100%",plotOutput("ServivalPlot"))
    )
)
  
# Define server logic required to draw a histogram
server <- 
    shinyServer(
        function(input, output,session) {
            observe(
                switch(input$selectedDist,
                       
                       "Bernoulli"={
                           source("Distributions/BernoulliServer.R")[1]
                           Bernoulli(input, output)
                       },
                       
                       "Binomial"= {
                           source("Distributions/BinomialServer.R")[1]
                           Binomial_Dist(input, output)
                       },
                       
                       "Hypergeometric"={
                           source("Distributions/HypergeometricServer.R")[1]
                           HG_Dist(input, output)
                       },
                       
                       "Geometric"= {
                           source("Distributions/GeometricServer.R")[1]
                           G_Dist(input, output)
                       },
                       
                       "Negative Binomial"={
                           source("Distributions/Negative_BinomialServer.R")[1]
                           NB_Dist(input, output)
                       }
                       
                ),
                
            )
            
            #hide and show the distribution parameters
            observe({
                toggle(id = "BernoulliParameters", condition = (input$selectedDist=='Bernoulli'))
                toggle(id = "BinomialParameters", condition = (input$selectedDist=='Binomial'))
                toggle(id = "HypergeometricParameters", condition = (input$selectedDist=='Hypergeometric'))
                toggle(id = "GeometricParameters", condition = (input$selectedDist=='Geometric'))
                toggle(id = "NBParameters", condition = (input$selectedDist=='Negative Binomial'))
                
            })
            
            # controlling the support of distributions
            observe({
                
                val=input$No_Trials_Bin
                updateSliderInput(session,"No_Success_Bin", value = floor(val/2), min = 0, max= val)
                
                
                m=input$whiteBalls_HG
                n=input$blackBalls_HG
                updateSliderInput(session,"No_Drown_HG", value = (m+n/2), min = 0, max= (m+n))
                
                f=input$No_Failures_G
                updateSliderInput(session,"CDF_G", value=floor(f/2), min=0, max=f)
                updateSliderInput(session,"Servival_G", value=floor(f/2), min=0, max=f)
                
                f_NB=input$No_Failurs_NB
                updateSliderInput(session,"CDF_NB", value=floor(f_NB/2), min=0, max=f_NB)
                updateSliderInput(session,"Survival_NB", value=floor(f_NB/2), min=0, max=f_NB)
                
                
            })
            observe({
                succ_Bin=input$No_Success_Bin
                updateSliderInput(session,"CDF_Bin", value = floor(succ_Bin/2), min = 0, max= succ_Bin)
                updateSliderInput(session,"Servival_Bin", value = floor(succ_Bin/2), min = 0, max= succ_Bin)
                
                k=input$No_Drown_HG
                updateSliderInput(session,"CDF_HG", value = floor(k/2), min = 0, max= k)
                updateSliderInput(session,"Survival_HG", value = floor(k/2), min = 0, max= k)
                
            })
            
        })

# Run the application 
shinyApp(ui = ui, server = server)
