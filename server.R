#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
# c9w4b

library(shiny)

shinyServer(function(input, output) {

  output$priceo    <- renderText(input$pricei)
  output$cicleso   <- renderText(input$pricei)
  output$slide1    <- renderText(input$slide[1])
  output$slide2    <- renderText(input$slide[2])
  output$multio    <- renderText(input$multi)
  output$rows1o    <- renderText(input$rows1)
  output$showhideo <- renderText(input$showhide)
  output$rows1t    <- renderText("all")

  output$distPlot <- renderPlot({
    # filter by Records numbers
    d   <- diamonds [ input$slide[1]:input$slide[2] , ]
    f1  <- "ALL"

    # 0 - all
    if (input$rows1 > 0){
      if (input$rows1 == 1) {
        f1 <- "J"
        d <- d [ d$color == f1 , ]
       }
      if (input$rows1 ==2) {
        f1 <- "I"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==3) {
        f1 <- "H"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==4) {
        f1 <- "G"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==5) {
        f1 <- "F"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==6) {
        f1 <- "E"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==7) {
        f1 <- "D"
        d <- d [ d$color == f1 , ]
      }
    }

    g <- d$price

    h <- hist( g, breaks=10, density=10, col="green", xlab="Prices", main=paste("Hist. Prices & filtered Color - ", f1) )
    h
    xfit <- seq(min(g),max(g),length=40 )
    yfit <- dnorm(xfit,mean=mean(g),sd=sd(g) )
    yfit <- yfit*diff(h$mids[1:2])*length(g)

    if (input$showhide ){
      lines( xfit, yfit, col="red", lwd=2)
      abline( v=input$pricei, col="red", lwd=2 )
    }

  })

  output$distPlot2 <- renderPlot({

    d   <- diamonds [ input$slide[1]:input$slide[2] , ]
    f1  <- "ALL"

    # 0 - all
    if (input$rows1 > 0){
      if (input$rows1 == 1) {
        f1 <- "J"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==2) {
        f1 <- "I"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==3) {
        f1 <- "H"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==4) {
        f1 <- "G"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==5) {
        f1 <- "F"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==6) {
        f1 <- "E"
        d <- d [ d$color == f1 , ]
      }
      if (input$rows1 ==7) {
        f1 <- "D"
        d <- d [ d$color == f1 , ]
      }
    }

    pairs(~carat+cut+color+clarity+price, data=d , col=c("red","blue","green","black","red" ))

    # plot(diamonds$price)
  })


    output$distPlot3 <- renderPlot({
      d   <- diamonds [ input$slide[1]:input$slide[2] , ]
      f1  <- "ALL"

      # 0 - all
      if (input$rows1 > 0){
        if (input$rows1 == 1) {
          f1 <- "J"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==2) {
          f1 <- "I"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==3) {
          f1 <- "H"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==4) {
          f1 <- "G"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==5) {
          f1 <- "F"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==6) {
          f1 <- "E"
          d <- d [ d$color == f1 , ]
        }
        if (input$rows1 ==7) {
          f1 <- "D"
          d <- d [ d$color == f1 , ]
        }
      }

      plot(d$carat, d$price, main="Scatterplot Carat / Price",
           xlab="Prices ", ylab="Price / Carat", pch=19 , col=c("red","blue","green","yellow","pink","black","grey") )
      legend( "bottomright", c("D-Red","E-Blue","F-Green","G-Yellow","H-pink","I-Black","J-Grey") )

      if (input$showhide ){
        abline(lm(d$price~d$carat), col="red", lwd=4)
        lines( lowess(d$carat,d$price), col="blue", lwd=4)
      }

  })

})
