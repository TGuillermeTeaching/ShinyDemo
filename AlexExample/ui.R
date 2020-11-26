## Define the user interface of the app
ui <- fluidPage(

  ## App title
  titlePanel("ApeApp"), ## Note this comma here!
                        ## This is like in a normal function
                        ## to separate argument. You'll easily
                        ## forget it so remember to always check
                        ## it for debugging your app!

  ## Sidebar layout with input and output definitions
  sidebarLayout(

    ## Sidebar panel for inputs
    sidebarPanel(

      ## Input: A Slider for the number of tips
      sliderInput(inputId = "tips", ## What the variable is called (input$tips)
                  label = "Number of tips:", ## What the user will see
                  min = 3, ## The bounds of the slider
                  max = 100, ## The bounds of the slider
                  value = 30) ## The defaut value of the slider
    ),

    ## Main panel for displaying outputs
    mainPanel(

      ## Output: A phylo plot
      plotOutput(outputId = "treeplot")

    )
  )
)
















                  # choices = list("Traits at tips",
                  #                "Trait disparity-through-time",
                  #                "MNND through time",
                  #                "Diversification rates")),
                  
                  # choices = list("0",
                  #                "0.01",
                  #                "0.02",
                  #                "0.04",
                  #                "0.07",
                  #                "0.1")),

                  # choices = list("0",
                  #                "0.01",
                  #                "0.02",
                  #                "0.04",
                  #                "0.07",
                  #                "0.1"))