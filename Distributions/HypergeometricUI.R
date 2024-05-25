

box(id="HypergeometricParameters", width = "300px", background = "black", solidHeader = TRUE,
    
    sliderInput("whiteBalls_HG", "the number of white balls", min = 0, max = 200, value = 30),
    
    sliderInput("blackBalls_HG","The number of black balls", min = 0 , max = 200 ,value = 45, step = 1),
    
    sliderInput("No_Drown_HG","the number of balls drawn", min = 0 , max = 200,value = 25, step = 1),
    
    sliderInput("CDF_HG","CDF: P(X < = x)", min = 0 , max = 200, value = 10, step = 1),
    
    sliderInput("Survival_HG","Survival: P(X > = x)", min = 0 , max = 200, value = 10, step = 1),
)
