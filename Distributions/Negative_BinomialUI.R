

box(id="NBParameters",width = "300px", background = "black", solidHeader = TRUE,
    
    sliderInput("probability_NB", "Success Probability", min = 0, max = 1, value = .2),
    sliderInput("No_Success_NB", "the number of Success ", min = 0, max = 200, value = 25),
    sliderInput("No_Failurs_NB", "the number of Failures ", min = 0, max = 200, value = 25),
    sliderInput("CDF_NB","CDF: P( X < = x )", min = 0 , max = 200,value = 6, step = 1),
    sliderInput("Survival_NB","Survival: P( X > = x )", min = 0 , max = 200,value = 6, step = 1),
)
