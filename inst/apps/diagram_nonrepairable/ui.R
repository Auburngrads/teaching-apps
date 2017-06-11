library(teachingApps)
library(diagram)

ui = fluidPage(theme = shinythemes::shinytheme(theme = getShinyOption("theme")), 
               tags$head(includeCSS(getShinyOption("CSS"))),
               tags$head(includeCSS("www/custom.css")),
               tags$footer(getShinyOption("sign")),

sidebarLayout( 
   sidebarPanel(width = 5,
      shinyAce::aceEditor(fontSize = 16, 
                          wordWrap = T,
                          outputId = "replaceplot", 
                          mode = "r", 
                          theme = "github", 
                          height = "450px",
                          value = 
"Mat1 <- matrix(NA, nrow = 3, ncol = 3)

AA <- as.data.frame(Mat1)
AA[[2,1]] <- 'F[0:1]'
AA[[3,1]] <- 'F[0:2]'

name <- c(expression(0[Alive]), 
          expression(1[Dead]), 
          expression(2[Dead]))

par(family='serif')

diagram::plotmat(A = AA,  
                 pos = 3, 
                 curve = .575, 
                 name = name, 
                 lwd = 2, 
                 arr.len = 0.6, 
                 arr.width = 0.25, 
                 my = .25, 
                 box.size = 0.08, 
                 arr.type = 'triangle', 
                 dtext = -1,
                 relsize = .99, 
                 box.cex = 1.5, 
                 cex = 1.25)"),

        actionButton("evalreplace", h4("Evaluate"), width = '100%')),
        
        mainPanel(plotOutput("plotreplace", height = "600px"), width = 7)))