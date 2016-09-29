#' Function Title
#'
#' @description Description
#'
#' @import shinythemes
#' @import shinyAce
#' @importFrom shiny shinyApp renderPrint renderPlot actionButton h2 h3 h4
#' @importFrom shiny brushedPoints brushOpts br hr checkboxInput div runGadget
#' @importFrom shiny fixedPanel uiOutput HTML htmlOutput sidebarLayout 
#' @importFrom shiny sidebarPanel mainPanel fluidPage navbarPage tabPanel
#' @importFrom shiny tabsetPanel withMathJax updateSelectInput updateSliderInput
#' @importFrom shiny updateNumericInput strong stopApp browserViewer
#' @importFrom shiny radioButtons clickOpts runApp helpText h1 h5 h6 includeCSS
#' @importFrom shiny includeScript includeMarkdown inputPanel isolate nearPoints
#' @importFrom shiny observe observeEvent reactiveValues reactive renderText
#' @import miniUI
#' @importFrom ggplot2 ggplot aes theme_bw geom_point geom_smooth coord_cartesian
#'
#'
#' @param pub Will this app be published? (see details)
#' @param theme Character string naming a color theme bootswatch color theme. Must be one of the themes that can be used in code{shinythemes::shinytheme()}
#'  
#' @details When publishing apps using shinyapps.io or shinyServer, set code{pub = TRUE} to prevent calls to code{install.packages}. Calls to code{install.packages} should not be included within an app and will result in an error.
#'
#' @export

gadget_lm <- function(pub = FALSE, theme = 'flatly') {

    file <- system.file("apps", "gadget_lm", "app.R", package = "teachingApps")

    teachingApps::getPackage(pub = pub, pkg  = 'miniUI')
    teachingApps::getPackage(pub = pub, pkg  = 'ggplot2')
    arg2 <- data.frame(theme = as.character(theme))
    
    save(list = 'arg2', 
         file = paste(c(dirname(file),'/args','.Rdata'), collapse = ''))
    
    shiny::runApp(file)
}