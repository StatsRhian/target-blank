library(shiny)

ui = fluidPage(
    tags$head(
        shinyjs::useShinyjs(),
        tags$script(type = "text/javascript", src = "target-blank.js")
    ),
    tabsetPanel(type = "tabs",
                tabPanel("Page 1",
                         h1("HTML"),
                         HTML("<a href = 'https://en.wikipedia.org/wiki/HTML'>A HTML link</a>"),
                         h2("Markdown"),
                         shiny::uiOutput("markdown1")
                         ),
                tabPanel("Page 2",
                         h1("HTML"),
                         HTML("<a href = 'https://en.wikipedia.org/wiki/HTML'>Another HTML link</a>"),
                         h2("Markdown"),
                         shiny::uiOutput("markdown2"))
    )
)

server = function(input, output) {
    output$markdown1 = reactive({
        includeMarkdown("www/link.md")
    })

    output$markdown2 = reactive({
        includeMarkdown("www/link.md")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
