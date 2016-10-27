#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# WEBAPP

library(shiny)
# library(miniUI)
# load("~/ownCloud/DOCS DataScience Course/Project_R/DataScience/C9W4/app1/data1.RData")

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Course 9 - Week 4 - Demo APP (Shiny) dcialdella@gmail.com"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
      sidebarPanel(
      h4("Selections"),
      h4("and press <SUBMIT>"),
      sliderInput("cicles", "Number of cicles:", min = 1, max = 50,value = 8),
      numericInput("multi","Multiplicator Factor:", value=2, min=1, max=10, step=1),
      sliderInput( "rows", "Number of rows:", 0, 100, 0),
      sliderInput("slide", "Range from/to:", -100,100, value=c(-50,50) ),
      checkboxInput("showhide","Show/Hide limits:", value=TRUE),
      submitButton("Submit Here")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type="tabs",
        tabPanel("Welcome", br(),
          hr(),
          h3("Starting Point - Help here."),
          h4("This is a simulation about CARs data."),
          br(),
          h4("You could complete/select options on the left panel"),
          h4("numbers or sliders."),
          br(),
          h4("After select the variations, press button (SUBMIT HERE)."),
          h4("and must click the second TAB to see the graphics."),
          br(),
          h4("In the 3rd tab you will see the numbers obtained"),
          h4("and some calculations made using the data provided."),
          br(),
          h4("The source code on https://github.com/dcialdella/c9w4"),
          br(),
          h4("The PPT is stored on https://dcialdella.shinyapps.io/c9w4/"),
          hr()
          ),

        tabPanel("Graphics 1", br(),
          plotOutput("distPlot")    ),

        tabPanel("Graphics 2", br(),
          plotOutput("distPlot2")),

        tabPanel("Number results",
          tabPanel("Numbers",
            br(),
            hr(),
            h3("Data calculated provided here:"),
            br(),
            h4("Number of cycles:"),
            textOutput("bins"),
            textOutput("data1"),
            hr(),
            h4("Data 1"),
            textOutput("showhideo"),
            hr(),
            h4("Data 2"),
            textOutput("maxX"),
            hr(),
            h4("Vario"),
            textOutput("var1o"),
            hr(),
            h4("Data 4"),
            textOutput("slider1"),
            hr(),
            h4("Data 5"),
            textOutput("slider1"),
            hr()
          )
          )
        )
      )
  )
))
