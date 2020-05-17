server <- function(input, output, session) {

    observeEvent(input$do, {
        ## when the user clicks on the "Stop" button, the shiny app will stop
        ## and the list of selected traits will be sent back to the tr8 function
        ## to be elaborated
        stopApp(list(
            "BiolFlor"=input$biolflor,
            "Ecoflora"=input$ecoflora,
            "Pignatti"=input$pignatti,
            "LEDA"=input$leda,
            "AMF"=input$amf,
            "Catminat"=input$catminat,
            "Imkerbond"=input$imkerbond,
            "BROT"=input$brot,
            "efloracal"=input$eflora,
            "PLANTS"=input$plants
            ))
         
    })

}
