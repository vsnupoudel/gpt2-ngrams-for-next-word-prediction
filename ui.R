## app.R ##
library(shinydashboard)
library(shiny)

ui <- dashboardPage(
  dashboardHeader(title = "Next word prediction"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Two or Three", tabName = "2or3", icon = icon("dashboard")),
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
                title = "Enter 2 or 3 words",
                  textInput(inputId = "inputWords",  label="2 or 3 words"
                            ,value="one of"),
                actionButton(inputId="submit", label="Submit")  
              ),
              box( #Display the three suggested outputs
                title = "The next suggested words are",
                tableOutput("outTable")
              ),
              box(title = " Input text was",
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

