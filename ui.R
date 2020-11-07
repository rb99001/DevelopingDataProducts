library(shiny)

## Here we will be performing basic math operations as prescribed by the question provided to us. We shall do that as follows by using shiny application

shinyUI(
    navbarPage("Shiney App",
               tabPanel("Calc",
                        fluidPage(
                            titlePanel("performing math operationss using a basic calculator"),
                            sidebarLayout(
                                sidebarPanel(
                                    numericInput("a", "Choose number 1", 10),
                                    numericInput("b", "Choose number 2", 10),
                                    selectInput("Operations", "Select Ops",
                                                choices = c("Add","Sub","Mult" ,"Div"))
                                    
                                ),
                                mainPanel(
                                    h2("final result:"),
                                    textOutput("sol")
                                )
                            )
                        )
               ),
               
               
               tabPanel("Check source Code",
                        h2("Code can be found on my GitHub"),
                        hr(),
                        h3("Developing Data Products Week 4 Peer Graded Assignment"),
                        helpText("This is a calculator which perfoms operations like add, sub, mul and div 
                  of 2 numbers given by the person inputting")
               ) ,
               
               tabPanel("GitHub Info",
                        a(""),
                        hr(),
                        h2("The code for the shiny app has been provided on GitHub")
               )
    )
)