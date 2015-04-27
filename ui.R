######## function to establish user interface for Shiny app
## Coursera Capstone Project
# created by: pmccullo06
# 
# the goal of this code is to create the right layout for my shiny app
library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Next Word Text Prediction"),
  
  sidebarPanel(
    
    textInput("text", label = h3("Text input"), 
              value = "try this please"),
    
    h6(em("Note: program will ignore numbers and special characters")),
    
    submitButton("Submit")
    
  ),
  
  mainPanel(
    h4("Twitter next word prediction:"),
    verbatimTextOutput("twitter_next"),
    h4("Blogs next word prediction:"),
    verbatimTextOutput("blogs_next"),
    h4("News Sites next word prediction:"),
    verbatimTextOutput("news_next"),
    
    h6("This program generates a prediction for the next word based on an 
       inputted text. The prediction algoritihm relies on word frequencies in 
      the English twitter, blogs, and news datasets at:"),
    
    h6(a("http://www.corpora.heliohost.org/")),
    br(),
    h6("Created April 2015 as the captsone project on my Data Science Specialization
      from Johns Hopkins and Coursera - all code can be found in the Coursera 
       Capstone folder at:"),
    h6(a("https://github.com/pmccullo"))
    
  )
  
  
))
