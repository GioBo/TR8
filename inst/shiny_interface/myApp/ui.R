library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(


    
  # App title ----
  titlePanel("TR8: selection of traits of interest."),


  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

        p("Select the traits you need to download from the lists on the right; each tab corresponds"),
        p("to one trait dabase."),
        p("Once you are done, click the Close botton below and go back to the R session."),

        actionButton("do", "Close"),
                                        # Input: Slider for the number of bins ----

    ),

    # Main panel for displaying outputs ----
    mainPanel(

         tabsetPanel(type = "tabs",
                     tabPanel("BiolFlor",
                              checkboxGroupInput("biolflor", "Traits available from BiolFlor:",
                                                 loppo("BiolFlor"))),
                     tabPanel("Ecoflora",
                              checkboxGroupInput("ecoflora", "Traits available from BiolFlor:",
                                                 loppo("Ecoflora"))),
                     tabPanel("Pignatti",
                              checkboxGroupInput("pignatti", "Traits available from BiolFlor:",
                                                 loppo("Pignatti"))),
                     tabPanel("LEDA",
                              checkboxGroupInput("leda", "Traits available from BiolFlor:",
                                                 loppo("LEDA"))),
                     tabPanel("AMF",
                              checkboxGroupInput("amf", "Traits available from BiolFlor:",
                                                 loppo("AMF"))),
                     tabPanel("Catminat",
                              checkboxGroupInput("catminat", "Traits available from BiolFlor:",
                                                 loppo("Catminat"))),
                     tabPanel("Imkerbond",
                              checkboxGroupInput("imkerbond", "Traits available from BiolFlor:",
                                                 loppo("Imkerbond"))),
                     tabPanel("BROT",
                              checkboxGroupInput("brot", "Traits available from BiolFlor:",
                                                 loppo("BROT"))),
                     tabPanel("EFLora California",
                              checkboxGroupInput("eflora", "Traits available from BiolFlor:",
                                                 loppo("EFlora_Cal"))),
                     tabPanel("Plants",
                              checkboxGroupInput("plants", "Traits available from BiolFlor:",
                                                 loppo("PLANTS")))
                  )
      #plotOutput(outputId = "distPlot")

    )
  )
)
