suppressPackageStartupMessages(c(library(NLP),library(ngram),library(caret),library(lattice),library(stringi),
                                 library(textclean),library(tm),library(data.table),library(dplyr,warn.conflicts=FALSE),
                                 library(shiny),library(shinythemes),library(stringr),library(markdown)))

source("predictionModel.R")

#shiny application
shinyApp(ui = fluidPage(
        titlePanel("Johns Hopkins University Data Science Capstone Project 2020"),
        navbarPage("Data Source: Coursera-Swiftkey",theme = shinytheme("flatly"),
                   tabPanel("User Interface"),
                   sidebarLayout(
                           sidebarPanel(
                                   h5("ENTER TEXT IN THE BOX",style ="color:black"),
                                   textInput(inputId="text1", label = h6("example: what is your favourite..."), value ="what is your...."),
                                   submitButton("Click Here"),
                           ),
                           mainPanel(
                                   h3("Entered Words",style ="color:grey"),
                                   textOutput("enteredWords"),
                                   h3("Predicted Next Word(s)",style ="color:grey"),
                                   textOutput("predictedWords"),
                           )),
                   tabPanel("About the Application",
                            fluidRow(
                                    includeMarkdown("About.md")),
                   )
        )
),
server = function(input, output) {
        #Predict next word - using prediction_model function defined in predictionModel.R
        prediction <- reactive({
                inputText <- input$text1
                nextwords<- prediction_model(inputText)
                nextwords
        })
        output$predictedWords <- renderPrint(prediction())
        output$enteredWords <- renderText({input$text1}, quoted = FALSE)
}
)

