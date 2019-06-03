#
# This ShinyApp shows how to evaluate and compare
# the quality of linear models.
#

library(shiny)

shinyServer(function(input, output) {
  
  # Reactive value that triggers plot update and stores fitted values
  v <- reactiveValues(fitted_values = NULL,
                      r2 = NULL)

  # When action button was triggered...
  observeEvent(input$trigger_estimation, {
  })
  
  # Retrun a formated string of the T-test results
  output$estimation_results <- renderText(
    gettextf(
      " Phrase 1 Average : %f \n Phrase 2 Average: %f \n Difference: %f \n Confidence Interval: (%f, %f)",
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$estimate[1],
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$estimate[2],
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$estimate[1] -
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$estimate[2],
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$conf.int[1],
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$conf.int[2]
      )
  )
  
  # P value Box
  output$accuracy_box <- renderValueBox({
    valueBox(
      t.test(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score), 
                    as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))$p.value, 
      "P-value", icon = icon("tachometer"),
      color = "light-blue"
      )
    })
  
  # Histogram Plots
  output$plot <- renderPlot({
      p1 <- hist(as.numeric(data[grepl(tolower(input$phrase1), tolower(data$title)),]$score))
      p2 <- hist(as.numeric(data[grepl(tolower(input$phrase2), tolower(data$title)),]$score))
      plot( p1, col=rgb(0,0,1,1/4), main = '', xlab='Score')
      plot( p2, col=rgb(1,0,0,1/4), add=T)
    
  })

  # Show Data Table
  output$data_table <- renderDataTable(data)

})