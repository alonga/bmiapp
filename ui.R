#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Body Mass Index (BMI) Calculator"),
  sidebarLayout(sidebarPanel(
    helpText("The body mass index (BMI) calculator. Please, input your weight and height."),
    sliderInput(
        inputId = "height",
        label = strong("Your height in cm:"),
        min = 100,
        max = 240,
        value = 185
    ), #User height input slider
    sliderInput(
      inputId = "weight",
      label = strong("Your weight in kg:"),
      min = 20,
      max = 140,
      value = 74
    ), #User mass input slider
    h5("The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in a person's body, and then categorize that person as underweight, normal weight, overweight, or obese based on that value."),
    h6("The app was created by Alon Gur-Arie as a Course final Project for Coursera Developing Data Products course")
    ),
                
    mainPanel(
      uiOutput("user_data"), #Text with the user data
      plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
      uiOutput("results") #Text results
    ))
))
