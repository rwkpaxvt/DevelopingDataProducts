library(shiny)

# Define server logic required to filter cars based on MPG
shinyServer(function(input, output) {
  
  output$outlist = renderTable({
    data = mtcars
    
    data = data[order(data$qsec),]
    
    ind = data$mpg >= input$mpg
    
    final = data[ind,c(1,7)]

    })
  
  })