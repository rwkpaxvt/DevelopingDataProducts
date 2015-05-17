library(shiny)

# Define UI for application that filters cars based on MPG then sorts by quarter mile time
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Find the fastest car based on minimum MPG"),
  
  # Sidebar with a slider input for the MPG threshold
  sidebarLayout(
    sidebarPanel(
      helpText("Use the slider bar to choose a minimum MPG from the mtcars dataset.  The cars
               shown will be sorted by quarter mile time (qsec) from fastest to slowest."),
      
      sliderInput("mpg",
                  "Select minimum MPG:",
                  min = 1,
                  max = 35,
                  value = 1)
    ),
    
    # Show a list of the cars meeting the threshold
    mainPanel(
      tableOutput("outlist")
    )
  )
))