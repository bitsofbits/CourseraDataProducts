library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Odds of Rolling a Given Value on Two Six-Sided Dice"),
    sidebarPanel(
        numericInput("id1", "Value", 7, min=1, max=100, step=1),
        h4("Instructions:"),
        p("To compute the the odds of rolling a given
          value on two six sided die, simply enter the value in the 
          box above. The odds will be computed and displayed to the
          right. In addition, a bar chart showing the odds of rolling
          all possible values will be shown with the the odds for the 
          entered value highlighted in red."),
        p("This might be useful, for instance, in a particularly heated
          Monopoly or backgammon game. However, it's unlikely to help
          your chess game very much.")
    ),
    mainPanel(
        plotOutput("plot"),
        h4("Value you entered:"),
        verbatimTextOutput("oid1"),
        h4("Odds of rolling value:"),
        verbatimTextOutput("oodds")
    )
))