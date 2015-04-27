######## function to establish user interface for Shiny app
## Coursera Capstone Project
# created by: pmccullo06
# 
# the goal of this code is to create the right layout for my shiny app

source("predict-functions-v1.R")

shinyServer(function(input, output) {
  output$twitter_next <- renderText({
    hope <- as.character(twitter_predict(as.character(input$text))[2])
  })
  
  output$blogs_next <- renderText({
    hope <- as.character(blogs_predict(as.character(input$text))[2])
  })
  
  output$news_next <- renderText({
    hope <- as.character(news_predict(as.character(input$text))[2])
  })

  
})
