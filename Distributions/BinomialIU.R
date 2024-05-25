box(id="BinomialParameters" ,width = "300px", background = "black", solidHeader = TRUE,
    sliderInput("prob_Bin", "Success Probability", min = 0, max = 1, value = .4),
    sliderInput("No_Trials_Bin","number of trials", min = 0 , max = 200 ,value = 30, step = 1),
    sliderInput("No_Success_Bin","the number of success", min = 0 , max = 1,value = 0, step = 1),
    sliderInput("CDF_Bin","CDF: P(X<=x)", min = 0 , max = 1,value = 0, step = 1),
    sliderInput("Servival_Bin","Servival: P(X>=x)", min = 0 , max = 1,value = 0, step = 1),
)