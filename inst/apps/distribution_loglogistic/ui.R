library(teachingApps)
library('metricsgraphics')
library('actuar')

ui = fluidPage(theme = shinythemes::shinytheme(theme = getShinyOption("theme")), 
               tags$head(includeCSS(getShinyOption("CSS"))),
               tags$head(includeCSS("www/custom.css")),
               tags$footer(getShinyOption("sign")),

sidebarLayout(
  sidebarPanel(width = 3, 
  hr(),
  sliderInput("range.ll", 
              label = h2("Range"),
              min = 0, 
              max = 50, 
              value = c(0,20)),
  hr(),
  sliderInput("mu.ll", 
              label = h2(HTML("Mean (&mu;)")),
              min = 0.5, 
              max = 10, 
              step = 0.5, 
              value = 0.5, 
              animate = T),
  hr(),
  sliderInput("sig.ll", 
              label = h2(HTML("Std Dev (&sigma;)")),
              min = 0.5, 
              max = 10, 
              step = 0.5, 
              value = 1, 
              animate = T)),

mainPanel(width = 9,
 tabsetPanel(type = 'pills',
  tabPanel(h4('Distribution Function'),  metricsgraphicsOutput("llogC",height = "600px")),
  tabPanel(h4('Density'),                metricsgraphicsOutput("llogP",height = "600px")),
  tabPanel(h4('Survival'),               metricsgraphicsOutput("llogR",height = "600px")),
  tabPanel(h4('Hazard'),                 metricsgraphicsOutput("llogh",height = "600px")),
  tabPanel(h4('Cumulative Hazard'),      metricsgraphicsOutput("llogH",height = "600px")),
  tabPanel(h4('Quantile'),               metricsgraphicsOutput("llogQ",height = "600px"))))))