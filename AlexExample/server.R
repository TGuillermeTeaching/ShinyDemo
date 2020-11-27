## Different levels

    ## types of plots
    # "traits at tips" (produces a histogram of trait values at tips)
    # "trait disparity through time" (produces a curve of trait disparity through time, measured as variance in traits)
    # "MNND through time" (produces a curve of mean-nearest-neighbour-distance in trait values through time, so another measure of disparity)
    # "diversification rates" (produces curves of speciation, extinction and diversification rates through time, all on the same plot)

    ## competition
    # 0, 0.01, 0.02, 0.04, 0.07, 0.1
    
    ## selection
    # 0, 0.01, 0.02, 0.04, 0.07

#################################
## The server (server.R) file
#################################

## Loading the packages required
library(ggplot2)
all_plots <- readRDS("all_plots.RDS")


## Define server logic required to simulate and plot the tree
server <- function(input, output) {

  ## Simulate and plot a tree and save it in output$treeplot
  output$alexplot <- renderPlot({

    ## Simulate a tree based on an input: the number of tips (input$tips)
    plot_type <- switch(input$plot_type,
                    "Traits at tips" = 1,
                    "Trait disparity-through-time" = 2,
                    "MNND through time" = 3,
                    "Diversification rates" = 4)

    competition <- switch(input$competition,
                         "0" = 1,
                         "0.01" = 2,
                         "0.02" = 3,
                         "0.04" = 4,
                         "0.07" = 5,
                         "0.1" = 6)

    selection <- switch(input$selection,
                         "0" = 1,
                         "0.01" = 2,
                         "0.02" = 3,
                         "0.04" = 4,
                         "0.07" = 5)

    ## Plotting the tree
    all_plots[[plot_type]][[competition]][[selection]]
  })

}



















    # selection <- switch(input$selection,
    #                      "0" = 1,
    #                      "0.01" = 2,
    #                      "0.02" = 3,
    #                      "0.04" = 4,
    #                      "0.07" = 5,
    #                      "0.1" = 6)