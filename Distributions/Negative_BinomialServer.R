NB_Dist=function(input, output)
{
  p=input$probability_NB
  r=input$No_Success_NB
  n=r=input$No_Failurs_NB
  
  
  x=0:(n+1)
  
  output$PMFPlot <- renderPlot({
    
    barplot( height = dnbinom(x,r,p),
             names.arg = 0:(n+1),
             main = "Negative Binomial PDF Plot", 
             xlab = 'X', 
             ylab = 'Probability')
  })
  
  
  output$CDFPlot <- renderPlot({
    
    barplot( height = pnbinom(x,r,p),
             main = "Negative Binomial CDF Plot",
             names.arg = 0:(n+1),
             xlab = paste('X<=',input$CDF_NB),
             ylab = 'Probability',
             col = c(rep("blue", input$CDF_NB), rep("gray", n+2-input$CDF_NB) )
    )
    
  })
  
  output$ServivalPlot <- renderPlot({
    
    barplot( height = pnbinom(x,r,p),
             main = "Negative Binomial Survival Plot",
             names.arg = 0:(n+1),
             xlab = paste('X>=',input$Survival_NB),
             ylab = 'Probability',
             col = c(rep("gray", input$Survival_NB), rep("blue", n+2-input$Survival_NB) )
    )
    
  })
}