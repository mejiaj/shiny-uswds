library(shiny)

ui <- fluidPage(
  titlePanel("USWDS + Shiny"),
  mainPanel("Test")
)

server <- function(input, output) {}
shinyApp( ui = ui, server = server )
