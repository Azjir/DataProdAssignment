
shinyServer(function(input, output) {
  BMI <- reactive({ (input$Weight* 703)/(input$Height)^2 })
  output$BMI <- renderText({BMI()})
  output$range <- renderText({
    if (BMI() < 18.5) { "underweight" }
    else if ( BMI() > 25) { "overweight"}
    else {"healthy"}
  })
})
