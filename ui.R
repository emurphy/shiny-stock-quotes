shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Stock quote"),
        
        sidebarPanel(
            textInput('symbol', label=h3("Ticker symbol"), value="GOOG"),
            helpText('e.g. BRKA, GOOG, TM'),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Quote'),
            h4('You entered'),
            verbatimTextOutput("symbol"),
            h4('The last price was'),
            verbatimTextOutput("price")
        )
    )
)