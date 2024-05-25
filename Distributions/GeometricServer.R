G_Dist=function(input, output)
{
  p=input$probability_G
  n=input$No_Failures_G

  x=0:(n+1)
  
  output$PMFPlot <- renderPlot({
    
    barplot( height = dgeom(x, p),
             names.arg = 0:(n+1),
             main = "Geometric PDF Plot", 
             xlab = 'X', 
             ylab = 'Probability')
  })

  
  output$CDFPlot <- renderPlot({
    
    barplot( height = pgeom(x,p),
             names.arg = 0:(n+1),
             main = "Geometric CDF Plot",
             xlab = paste('X<=',input$CDF_G),
             ylab = 'Probability',
             col = c(rep("blue", input$CDF_G), rep("gray", n+2-input$CDF_G) )
    )
    
  })
  
  output$ServivalPlot <- renderPlot({
    
    barplot( height = pgeom(x,p),
             names.arg = 0:(n+1),
             main = "Geometric Survival Plot",
             xlab = paste('X>=',input$Servival_G),
             ylab = 'Probability',
             col = c(rep("gray", input$Servival_G), rep("blue", n+2-input$Servival_G) )
    )
    
  })
}