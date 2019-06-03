

# Use ShinyDashboard
library(shinydashboard)

ui <- dashboardPage(
  
  # Define Header and Sidebar
  dashboardHeader(title = "Reddit Tittle Phrases"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Comparison", tabName = "comparison", icon = icon("atom")),
      menuItem("Data", tabName = "data", icon = icon("database")),
      menuItem("About", tabName = "about", icon = icon("info-circle"))
    )
  ),
  

  dashboardBody(
    
    # Define CSS style for the estimation button
    tags$head(tags$style(HTML('
                              .estimation_button {background-color: #33CE67; width: 100%}
                              .estimation_button:hover {background-color: #1DAA4C}
                              '))),
    
    # Define content for each page
    tabItems(
      
      # Estimation Page
      tabItem(tabName = "comparison",
              fluidRow(
                
                # Add box for graph 
                box(
                  title = "Score Comparison",
                  solidHeader = TRUE,
                  status = "primary",
                  width = 8,
                  plotOutput("plot")
                  ),
                
                # Add box for P value
                valueBoxOutput("accuracy_box", width = 4),

                # Add box to collect phrases
                box(
                  width = 4,
                  title = "Phrases",
                  status = "primary",
                  solidHeader = TRUE,
                  textInput("phrase1", "Phrase 1", "Trump"), 
                  textInput("phrase2", "Phrase 2", "Sanders"),
                  actionButton("trigger_estimation","Cluster",
                               icon("play"),
                               class="estimation_button")
                  )
                ),
              verbatimTextOutput("estimation_results")


      ),

      # Data Page
      tabItem(tabName = "data",
              h2("Data"),
              dataTableOutput("data_table")
      ),
      
      # About Page
      tabItem(tabName = "about",
              includeHTML("about.html")
      )
    )
  )
)