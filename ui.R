#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Pizza Place Pricing Tool"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("size", "Select Your Pie Size (Inches - Diameter):", 8, 16, value = 12),
       h3("Now Choose Your Toppings:"),    
       checkboxInput("mushrooms","Mushrooms", value=FALSE),
       checkboxInput("pineapple","Pineapple", value=FALSE),
       checkboxInput("ham","Ham", value=FALSE),
       checkboxInput("sausage","Sausage", value=FALSE),
       checkboxInput("extra_cheese","Extra Cheese", value=FALSE)
    ),
    
    # Display the total price of the pizza
    mainPanel(
       h3("Cost of this Option ($):"),
       textOutput("calc_price")
    )
  )
))
