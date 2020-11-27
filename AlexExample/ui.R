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

      selectInput("plot_type", "Region:", 
choices = list("Traits at tips",
               "Trait disparity-through-time",
               "MNND through time",
               "Diversification rates")),
      hr(),
      helpText("Data from AT&T (1961) The World's Telephones."),

      selectInput("competition", "Competition value:", 
                  choices = list("0",
                                 "0.01",
                                 "0.02",
                                 "0.04",
                                 "0.07",
                                 "0.1")),

      selectInput("selection", "Selection value:", 
                  choices = list("0",
                                 "0.01",
                                 "0.02",
                                 "0.04",
                                 "0.07"))

    ),

    ## Main panel for displaying outputs
    mainPanel(

      ## Output: A phylo plot
      plotOutput(outputId = "alexplot")

    )
  )
)

















                  