shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Stock quote"),
        
        sidebarPanel(
            textInput('symbol', label=h3("Enter ticker symbol"), value="GOOG"),
            helpText("Examples: 'BRKA', 'GOOG', 'TM' or 'BRKA;GOOG;TM' (separate by semi-colon)"),
            submitButton('Get Quote')
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