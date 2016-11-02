#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
# c9w4b

library(shiny)
# install.packages('ggplot2')
library('ggplot2')
# diamonds

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  titlePanel("Course 9 - Week 4 - Dinner with Diamonds (using Shiny) dcialdella@gmail.com"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h4("Select & Press <SUBMIT>"),
      sliderInput("pricei", "Price:", min = 326, max = 18823, value = 9574),
      numericInput("multi","Carat (0.2 - 5.01):", value=3.85, min=0.2, max=5.01, step=0.5),
      sliderInput( "rows1", "Color (0-all, 1.I-Ideal to 7.D-Fear ):", value=0, min=0, max=7, step=1),
      sliderInput("slide", "Recs used, range from/to all:", min=0, max=53940, value=c(1000,2000), step=100 ),
      checkboxInput("showhide","Show/Hide Lines:", value=TRUE),
      h4("All Vars are used in filtering/exclusion the data in the graphics generated."),
      submitButton("SUBMIT")
    ),

    mainPanel(
    tabsetPanel(type="tabs",
                tabsetPanel(type="tabs",
                            tabPanel("Welcome", br(),
                                     hr(),
                                     h3("Welcome Page (Help)."),
                                     br(),
                                     h4("You must select/enter data as variables and when press SUBMIT, then the graphics will be calculated."),
                                     br(),
                                     h4("You could change to another tabs and see data/graphics, then you could change vars again and recalculate it (it's free)."),
                                     br(),
                                     h4("In the 2nd tab you will see the numbers typed/used as variables."),
                                     br(),
                                     h4("In the 3rd - 5th tab you will see the graphs generated, used to understand the meaning in data related to Diamonds."),
                                     br(),
                                     br(),
                                     h5("Running code:"),
                                     h5(a("https://dcialdella.shinyapps.io/c9w4/") ),
                                     h5("The source code:"),
                                     h5(a("https://github.com/dcialdella/c9w4") ),
                                     h5("The PPT stored on:"),
                                     h5(a("https://dcialdella.shinyapps.io/c9w4/") ),
                                     h5("Relevant info"),
                                     h5(a("http://www.lumeradiamonds.com/diamond-education/index") ),
                                     hr()
                            ),

                            tabPanel("Numbers", br(),
                                     hr(),
                                     h3("Vars. provided."),
                                     hr(),
                                     h4("Price of Diamond:"),
                                     textOutput("priceo"),
                                     hr(),
                                     h4("Carat:"),
                                     textOutput("multio"),
                                     hr(),
                                     h4("Color (0-all) :"),
                                     textOutput("rows1o"),
                                     hr(),
                                     h4("Records used from file FROM #:"),
                                     textOutput("slide1"),
                                     h4("Records end TO #:"),
                                     textOutput("slide2"),
                                     hr(),
                                     h4("Show LINES on graphs:"),
                                     textOutput("showhideo")
                            ),

                            tabPanel("Histogram on prices", br(),
                                     hr(),
                                     h3("Dynamic Graphics."),
                                     h5("Histogram based on Prices, filtered on COLOR and RECORDS RANGE."),
                                     plotOutput("distPlot")
                            ),

                            tabPanel("Pairs on data.", br(),
                                     hr(),
                                     h5("Need some seconds to calculate it...please wait."),
                                     plotOutput("distPlot2")
                            ),

                            tabPanel("Comparatives", br(),
                                     hr(),
                                     h3("Filtered data, Price & Carat used."),
                                     plotOutput("distPlot3")
                            )
                )
      )
   )
 )
)
)

