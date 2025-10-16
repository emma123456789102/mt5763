#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram

## Only run examples in interactive R sessions
if (interactive()) {
  
  ui <- fluidPage(
    sliderInput("n", "Number of observations", 2, 1000, 500),
    plotOutput("plot")
  )
  
  server <- function(input, output) {
    
    # Anything that calls autoInvalidate will automatically invalidate
    # every hour.
    autoInvalidate <- reactiveTimer(3600000)
    
    observe({
      # Invalidate and re-execute this reactive expression every time the
      # timer fires.
      autoInvalidate()
      
      # Do something each time this is invalidated.
      # The isolate() makes this observer _not_ get invalidated and re-executed
      # when input$n changes.
      print(paste("The value of input$n is", isolate(input$n)))
    })
    
    # Generate a new histogram each time the timer fires, but not when
    # input$n changes.
    output$plot <- renderPlot({
      autoInvalidate()
      hist(rnorm(isolate(input$n)))
    })
  }
  
  shinyApp(ui, server)
}