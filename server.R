#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyServer(function(input, output) {
   
  output$calc_price = renderText(0.8* input$size + 1.25*input$mushrooms + 1.5*input$pineapple + 2.0*input$ham + 1.75*input$sausage + 2.25*input$extra_cheese)
    
})
