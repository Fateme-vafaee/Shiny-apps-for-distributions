Bernoulli=function(input, output)
{
    output$PMFPlot <- renderPlot({
      barplot(names.arg = 0:1, 
              height = dbinom(0:1, size = 1, p = input$probability),
              main = "Bernoulli PDF Plot", xlab = 'X', ylab = 'Probability')
    })
    
    output$CDFPlot <- renderPlot({
      barplot(height = pbinom(0:1, size = 1, p =input$probability), 
              names.arg = 0:1,
              main = "Bernoulli CDF Plot", xlab = paste('X<=',input$CDF_bern), ylab = 'Probability',
              col = c(rep("blue", input$CDF_bern+1), rep("gray", (1-input$CDF_bern) ) ) )
      
    })
    
    output$ServivalPlot <- renderPlot({
      barplot(height = pbinom(0:1, size = 1, p = input$probability), 
              names.arg = 0:1,
              main = "Bernoulli Survival Plot", xlab = paste('X>=',input$Survival_bern+1), ylab = 'Probability',
              col = c(rep("gray", input$Survival_bern+1), rep("blue", (1-input$Survival_bern) ) ) )
      
    })
}