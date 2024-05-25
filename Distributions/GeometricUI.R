

box(id="GeometricParameters", width = "300px", background = "black", solidHeader = TRUE,
    
    sliderInput("probability_G", "Success Probability", min = 0, max = 1, value = .2),
    sliderInput("No_Failures_G", "the number of failures ", min = 0, max = 200, value = 25),
    sliderInput("CDF_G","CDF: P( X < = x )", min = 0 , max = 200,value = 6, step = 1),
    sliderInput("Servival_G","Servival: P( X > = x )", min = 0 , max = 200,value = 6, step = 1),
)
