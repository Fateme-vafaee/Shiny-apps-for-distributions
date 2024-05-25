Binomial_Dist=function(input, output)
{
  p=input$prob_Bin
  n=input$No_Trials_Bin
  m=input$No_Success_Bin
  
  x=0:(m+1)
  
  output$PMFPlot <- renderPlot({
    
    barplot(
            names.arg = 0 : (m+1), 
            height = dbinom(x,n,p),
            main = "Binomial PDF Plot", xlab = 'X', ylab = 'Probability')
  })

  output$CDFPlot <- renderPlot({

    barplot(
            height = pbinom(x,n,p),
            names.arg = 0:(m+1),
            main = "Binomial CDF Plot",
            xlab = paste('X < = ',(input$CDF_Bin+1)),
            ylab = 'Probability',
            col = c(rep("blue", (input$CDF_Bin)+1), rep("gray", n-input$CDF_Bin ))
            )

  })

  output$ServivalPlot <- renderPlot({

    barplot(
      height = pbinom(x,n,p),
      names.arg = 0:(m+1),
      main = "Binomial Servival Plot",
      xlab = paste('X > = ',(input$Servival_Bin+1)),
      ylab = 'Probability',
      col = c(rep("gray", (input$Servival_Bin)+1), rep("blue", n-input$Servival_Bin ))
    )
  })
}
#   output$PMFPlot <- renderPlot({
#     
#     barplot(names.arg = 0:input$number_of_observations_Bin, 
#             height = dbinom(0:input$number_of_observations_Bin, size = input$the_number_of_trials_Bin, p = input$probability_Bin),
#             main = "Binomial PDF Plot", xlab = 'X', ylab = 'Probability')
#   })
#   
#   output$CDFPlot <- renderPlot({
#     
#     barplot(height = pbinom(0:input$number_of_observations_Bin, size = input$the_number_of_trials_Bin, p = input$probability_Bin), 
#             names.arg = 0:input$number_of_observations_Bin,
#             main = "Binomial CDF Plot", xlab = paste('X < = ',(input$the_number_of_trials_Bin)+1), ylab = 'Probability',
#             col = c(rep("blue", (input$the_number_of_trials_Bin)+1), rep("gray", ((input$number_of_observations_Bin)-(input$the_number_of_trials_Bin) ) ) 
#             ))
#     
#   })
#   
#   output$ServivalPlot <- renderPlot({
#     
#     barplot(height = pbinom(0:input$number_of_observations_Bin, size = input$number_of_observations_Bin, p = input$probability_Bin), 
#             names.arg = 0:input$number_of_observations_Bin,
#             main = "Binomial Survival Plot", xlab = paste('X>=',input$the_number_of_trials_Bin+1), ylab = 'Probability',
#             col = c(rep("gray", input$the_number_of_trials_Bin+1), rep("blue", (input$number_of_observations_Bin-input$the_number_of_trials_Bin) ) ) )
#     
#   })
# 