box(id="BernoulliParameters", width = "300px", background = "black", solidHeader = TRUE,
    
    sliderInput("probability", "Success Probability", min = 0, max = 1, value = .5),
    
    sliderInput("CDF_bern","CDF: P( X < = x )", min = 0 , max = 1,value = 0, step = 1),
    
    sliderInput("Survival_bern","Survival: P(X>=x)", min = 0 , max = 1,value = 0, step = 1),

)