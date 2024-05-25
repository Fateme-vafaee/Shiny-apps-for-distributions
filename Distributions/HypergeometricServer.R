HG_Dist=function(input, output)
{
  m=input$whiteBalls_HG
  n=input$blackBalls_HG
  k=input$No_Drown_HG
  x=0:(k+1)
  output$PMFPlot <- renderPlot({
    
    
    
    barplot( height = dhyper(x, m, n, k),
             names.arg = 0:(k+1),
            main = "Hypergeometric PDF Plot", 
            xlab = 'X', 
            ylab = 'Probability')
  })
  
  
  output$CDFPlot <- renderPlot({
    
    barplot( height = phyper(x, m, n, k),
            main = "Hypergeometric CDF Plot",
            names.arg = 0:(k+1),
            xlab = paste('X<=',input$CDF_HG),
            ylab = 'Probability',
            col = c(rep("blue", input$CDF_HG), rep("gray", k+2-input$CDF_HG) )
            )
    
  })
  
  output$ServivalPlot <- renderPlot({
    
    barplot( height = phyper(x, m, n, k),
             main = "Hypergeometric Survival Plot",
             names.arg = 0:(k+1),
             xlab = paste('X>=',input$Survival_HG),
             ylab = 'Probability',
             col = c(rep("gray", input$Survival_HG), rep("blue", k+2-input$Survival_HG) )
    )
    
  })
  
  
  # x	
  # vector of quantiles representing the number of white balls drawn without replacement from an urn which contains both black and white balls.
  # 
  # m	
  # the number of white balls in the urn.
  # 
  # n	
  # the number of black balls in the urn.
  # 
  # k	
  # the number of balls drawn from the urn, hence must be in 0,1,…, m+n.
  
}