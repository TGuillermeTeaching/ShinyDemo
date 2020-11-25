#################################
## The server (server.R) file
#################################

## Loading the packages required
library(ape)

## Define server logic required to simulate and plot the tree
server <- function(input, output) {

  ## Simulate and plot a tree and save it in output$treeplot
  output$treeplot <- renderPlot({

    ## Simulate a tree based on an input: the number of tips (input$tips)
    tree <- rtree(input$tips)

    ## Plotting the tree
    plot(tree)
  
  })

}