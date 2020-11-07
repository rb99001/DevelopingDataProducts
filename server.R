library(shiny)

shinyServer(function(input, output) {
    
    output$sol <- renderText({  
        
        switch(input$Operations,
               "Add" = input$a + input$b, ## Addition of two numbers
               "sub" = input$a - input$b, ## Subtraction of two numbers
               "Mul" = input$a * input$b, ## Multiplication of two numbers
               "Div" = input$a / input$b) ## Division of two numbers
        
    })
    
})