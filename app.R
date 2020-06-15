library(shiny)
library(sass)

sass(
  sass_file("scss/theme/styles.scss"),
  output="www/css/uswds.css"
)

ui <- fluidPage(
  tags$head(
    tags$link(
      href="css/uswds.css",
      rel ="stylesheet",
      type="text/css"
    )
  ),
  titlePanel("USWDS + Shiny"),
  mainPanel(
    actionButton(
      "actionBtn",
      "Button",
      class="usa-button"
    ),
    tags$button(
      id="primaryButton",
      type="button",
      class="usa-button",
      HTML("Primary button")
    ),
    tags$button(
      id="secondaryButton",
      type="button",
      class="usa-button usa-button--secondary",
      HTML("Secondary button")
    ),
    tags$button(
      id="accentCoolButton",
      type="button",
      class="usa-button usa-button--accent-cool",
      HTML("Accent cool button")
    ),
    tags$button(
      id="baseButton",
      type="button",
      class="usa-button usa-button--base",
      HTML("Base button")
    ),
    tags$button(
      id="outlineButton",
      type="button",
      class="usa-button usa-button--outline",
      HTML("Outline button")
    ),
    tags$button(
      id="bigButton",
      type="button",
      class="usa-button usa-button--big",
      HTML("Big button")
    ),
    tags$button(
      id="unstyledButton",
      type="button",
      class="usa-button usa-button--unstyled",
      HTML("Unstyled button")
    ),
    div(
      class="usa-checkbox",
      tags$input(
        type="checkbox",
        id="checkbox-1",
        class="usa-checkbox__input",
        label="checkbox-1",
        HTML("<label class='usa-checkbox__label' for='checkbox-1'>My checkbox</label>")
      )
    ),
    div(
      class="usa-radio",
      tags$input(
        type="radio",
        id="radio-1",
        class="usa-radio__input",
        label="radio-1",
        name="my-radios",
        HTML("<label class='usa-radio__label' for='radio-1'>Radio 1</label>")
      ),
      tags$input(
        type="radio",
        id="radio-2",
        class="usa-radio__input",
        label="radio-2",
        name="my-radios",
        HTML("<label class='usa-radio__label' for='radio-2'>Radio 2</label>")
      ),
    ),
    div(
      class="usa-form",
      tags$input(
        id="range-slider",
        class="usa-range",
        type="range",
        min="0",
        max="100",
        step="10",
        value="20",
        HTML("<label class='usa-label' for='range-slider'>Range</label>")
      )
    ),
    div(
      class="usa-combo-box",
      tags$select(
        id="combobox",
        class="usa-select usa-combo-box__select",
        name="fruit",
        HTML("<label class='usa-label' for='combobox'>Select a fruit</label>")
      )
    )
  )
)

server <- function(input, output) {}
shinyApp( ui=ui, server=server )
