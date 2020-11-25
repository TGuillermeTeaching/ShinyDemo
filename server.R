## Loading the packages required
library(ape)

## Define server logic required to simulate and plot the tree
server <- function(input, output) {

  # Simulate a random tree and plot it
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$treeplot <- renderPlot({

    ## Simulate a tree
    tree <- rtree(input$tips)

    ## Plotting the tree
    plot(tree)

    })

}