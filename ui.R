library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("2D6 Computor"),
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
          game of Monopoly or backgammon. However, it's unlikely to help
          you in a game of chess.")
    ),
    mainPanel(
        h2("Odds of Rolling Value on Two Six-Sided Dice"),
        plotOutput("plot"),
        h4("Value you entered:"),
        verbatimTextOutput("oid1"),
        h4("Odds of rolling value:"),
        verbatimTextOutput("oodds"),
        hr(),
        p(em("Source code is available at:",
        a("https://github.com/bitsofbits/CourseraDataProducts", 
           href="https://github.com/bitsofbits/CourseraDataProducts")))
        
    )
))