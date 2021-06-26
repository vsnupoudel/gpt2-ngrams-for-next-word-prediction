## app.R ##
library(shinydashboard)
library(shiny)

ui <- dashboardPage(
  dashboardHeader(title = "Next word prediction - 3 next words based on Probability"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Two to Five", tabName = "2or3", icon = icon("dashboard")),
      menuItem("Blank", tabName = "widgets", icon = icon("th"))
    )
  )
  ,
  ## Body content
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "2or3",
              box(
                title = "Randomisation based on Probabiilty implemented - Always displays 3 top words",
                  textInput(inputId = "inputWords"
                            ,  label="Please Enter Two to Five words: Delay is upto 30 seconds for the first result"
                            ,value="one of      THe"),
                actionButton(inputId="submit", label="Submit")  
              ),
              box( #Display the three suggested outputs
                title = "The next suggested words are:",
                tableOutput("outTable")
              ),
              box(title = "Input text after lowercasing and cleaning was:",
                  textOutput("outputWords")
                
              )
      ),
      
      # Second tab content
      tabItem( tabName = "widgets",
              h2("Widgets tab content")
      )
    )
  )
  
)

