#library(shiny)


# Define UI for app 
ui <- fluidPage(
    
  # App title ----
  titlePanel("TR8: selection of traits of interest."),
  
  # Sidebar layout
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

        p("Select the traits you need to download from the lists on the right; each tab corresponds"),
        p("to one trait dabase."),
        p("Once you are done, click the",strong("Send request"), "botton below: the web page will stop; you can"),
        p("now close it, go back to the R session and use the downloaded data."),
        tags$br(),

        p("Please remember to always cite the appropriate sources of traits data (see ", code("?bib"), ")."),
        tags$br(),
        tags$br(),
        tags$br(),

        actionButton("do", "Send request")
    ),

    # Main panel for collecting requested traits ----
    mainPanel(

         tabsetPanel(type = "tabs",
                     tabPanel("BiolFlor",
                              checkboxGroupInput("biolflor", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("BiolFlor"))),
                     tabPanel("Ecoflora",
                              checkboxGroupInput("ecoflora", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("Ecoflora"))),
                     tabPanel("Pignatti",
                              checkboxGroupInput("pignatti", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("Pignatti"))),
                     tabPanel("LEDA",
                              checkboxGroupInput("leda", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("LEDA"))),
                     tabPanel("AMF",
                              checkboxGroupInput("amf", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("AMF"))),
                     tabPanel("Catminat",
                              checkboxGroupInput("catminat", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("Catminat"))),
                     tabPanel("Imkerbond",
                              checkboxGroupInput("imkerbond", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("Imkerbond"))),
                     tabPanel("BROT",
                              checkboxGroupInput("brot", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("BROT"))),
                     tabPanel("EFLora California",
                              checkboxGroupInput("eflora", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("EFlora_Cal"))),
                     tabPanel("Plants",
                              checkboxGroupInput("plants", "Traits available from BiolFlor:",
                                                 TR8:::list_traits_shiny("PLANTS")))
                  )

    )
  )
)
