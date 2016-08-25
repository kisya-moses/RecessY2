#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
  bootstrapPage(
    fluidPage(
         plotOutput("plot")
    )

  )
   ))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output, session) {
  output$plot <- renderPlot({
    progress <- shiny::Progress$new(session, min=1, max=15)
    on.exit(progress$close())
    progress$set(message = 'Calculation in progress',
                 detail = 'This may take a while...')
    for (i in 1:15) {
      progress$set(value = i)
      Sys.sleep(0.5)
    }
    plot(cars)
  })
})
# Run the application
shinyApp(ui = ui, server = server)
