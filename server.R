library(shiny)


counts = rep(0, 13)
names(counts) = 1:13
for (i in 1:6 ) {
    for (j in 1:6) {
        counts[i+j] = counts[i+j] + 1;
    }   
}
shinyServer(
    function(input, output) {
        
        output$plot <- renderPlot({
            colors = rep("grey", 13)
            if (!is.na(input$id1) && is.integer(input$id1) && (input$id1 > 0)) {
                colors[input$id1] = "red"
            }
            barplot(counts, col=colors, xlab="target value", ylab="odds (x 36)")
        })

    	output$oid1 <- renderText({input$id1})
    	
    	output$oodds <- renderText({if (is.na(input$id1) || !is.integer(input$id1) || (input$id1 < 1) || (input$id1 > 12)) "0"
    	                             else paste(counts[input$id1], "/ 36")})
    }
)