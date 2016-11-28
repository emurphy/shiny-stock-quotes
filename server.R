library(quantmod)
price <- function(symbol) getQuote(symbol)$Last

shinyServer(
    function(input, output) {
        output$symbol <- renderPrint({input$symbol})
        output$price <- renderPrint({price(input$symbol)})
    }
)