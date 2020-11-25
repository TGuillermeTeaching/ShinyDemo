## Define the user interface of the app
ui <- fluidPage(

  ## App title
  titlePanel("ApeApp"),

  ## Sidebar layout with input and output definitions
  sidebarLayout(

    ## Sidebar panel for inputs
    sidebarPanel(

      ## Input: Slider for the number of tips
                  ## How the variable will be called (input$tips)
      sliderInput(inputId = "tips",
                  ## What the user will see
                  label = "Number of tips:",
                  ## The bounds of the slider
                  min = 3,
                  max = 100,
                  ## The defaut value of the slider
                  value = 30)
    ),

    ## Main panel for displaying outputs
    mainPanel(

      ## Output: A phylo plot
      plotOutput(outputId = "treeplot")

    )
  )
)