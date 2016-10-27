#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# WEBAPP

library(shiny)
#data1 <- c(1,2,3,4)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$showhideo <- renderText(input$showhide)
  output$var1o     <- renderText(input$var1)
  output$slider1   <- renderText(input$sliderx[1] )
  output$slider2   <- renderText(input$sliderx[2] )

  # REACTIVE FUNC
  output$Calc     <- reactive({ Calc2 <- output$sliderx })
#  output$data1    <- input$data1

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(1), max(100), length.out = 100) # = (input$bins * input$num1) + 1)

    # draw the histogram with the specified number of bins
#     plot(cars)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

#    plot()
  })

})
