shinyUI(fluidPage(
        titlePanel("Body Mass Index Calculator"),
        
        sidebarLayout(sidebarPanel(
                
                helpText("The body mass index (BMI), or Quetelet index, is a measure of relative weight based on an individual's mass and height.

Devised between 1830 and 1850 by the Belgian polymath Adolphe Quetelet during the course of developing 'social physics', it is defined as the individual's body mass divided by the square of their height – with the value universally being given in units of kg/m^2. (Wikipedia)"),
        
                radioButtons(
                        inputId = "units",
                        label = "Units:",
                        choices = c("Metric (kg & cm)" = 1, "Imperial (lb & in)" = 2),
                        selected = 1
                ),
                
                numericInput(
                        inputId = "mass",
                        label = strong("Your mass:"),
                        value = 70
                ),
                
                numericInput(
                        inputId = "height",
                        label = strong("Your height:"),
                        value = 180
                )
        ),
        
        mainPanel(
                uiOutput("input"),
                uiOutput("result")
        ))
))
