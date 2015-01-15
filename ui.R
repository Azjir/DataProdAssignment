shinyUI(fluidPage(
  titlePanel("BMI Calculator"),
  
  sidebarLayout(
    sidebarPanel( h3("Data"),
                  sliderInput("Height",label="Height(in)",min=48,max=96,value=65),
                  sliderInput("Weight",label="Weight(lb)",min=80,max=300,value=140)
                  ),
    
    mainPanel(h3("Description"),
              p('This is a simple calculator of BMI(Body Mass Index)'),
              p('BMI is a measure of relative size based on mass and height.'),
              p('BMI is calculated by dividing the mass by the square of the height.'),
              p('Enter your height and your weight in the side bar to calculate your BMI.'),
              h3("Results"),
              p('BMI:'),
              textOutput('BMI'),
              p('A healthy BMI range is 18.5 to 25'),
              p('The results indicate that you are:'),
              textOutput('range')
              )
  )
))