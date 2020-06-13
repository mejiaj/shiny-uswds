library(shiny)
library(sass)

sass(
  sass_file("scss/theme/styles.scss"),
  output = "www/css/uswds.css"
)

ui <- fluidPage(
  tags$head(
    tags$link(
      href = "css/uswds.css",
      rel  = "stylesheet",
      type = "text/css"
    )
  ),
  titlePanel("USWDS + Shiny"),
  mainPanel(
    actionButton(
      "actionBtn",
      "Button",
      class = "usa-button"
    ),
    tags$button(
      id="myButton",
      type="button",
      class="usa-button",
      HTML("Primary button")
    )
  )
)

server <- function(input, output) {}
shinyApp( ui = ui, server = server )
