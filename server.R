server <- function(input, output) {
  df23 <- readRDS('data/FiveWords.rds')
  inputr <- eventReactive(input$submit, 
                          { trimws( gsub( '\\s+' ,' ', tolower(input$inputWords) ) ) }
                          ) 

  output$outTable  <-  renderTable(  { df23 [ df23$X==inputr()
                            , c("X", "y")][1:3, ]            } ) 

  output$outputWords <- renderText ( { 
    inputr()
    } )
}