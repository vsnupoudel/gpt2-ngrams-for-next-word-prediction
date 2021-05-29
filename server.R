server <- function(input, output) {
  df23 <- readRDS('data/my_data.rds')
  inputr <- eventReactive(input$submit, 
                          { trimws( gsub( '\\s+' ,' ', tolower(input$inputWords) ) ) }
                          ) 

  output$outTable  <-  renderTable(  { df23 [ df23$X==inputr()
                            , c("X", "y")][1:3, ]            } ) 

  data <- df23[1, "X"]
  output$outputWords <- renderText ( { 
    inputr()
    } )
}