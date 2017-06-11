library(teachingApps)
library('SMRD')
library('metricsgraphics')

ui = fluidPage(theme = shinythemes::shinytheme(theme = getShinyOption("theme")), 
               tags$head(includeCSS(getShinyOption("CSS"))),
               tags$head(includeCSS("www/custom.css")),
               tags$footer(getShinyOption("sign")),

sidebarLayout(
  sidebarPanel(width = 3, 
  hr(),
  sliderInput("rangeigau", 
              label = h2("Range"),
              min =  0, 
              max = 50, 
              value = c(0,25)),
  hr(),
  sliderInput("th.igau", 
              label = h2(HTML("Scale (&theta;)")),
              min = .5, 
              max = 10, 
              step = .5, 
              value = 1, 
              animate = TRUE),
  hr(),
  sliderInput("be.igau", 
              label = h2(HTML("Shape (&beta;)")),
              min = .5, 
              max = 10, 
              step = .5, 
              value = 1,
              animate = TRUE)),

mainPanel(width = 9,
 tabsetPanel(type = 'pills',
  tabPanel(h4('Distribution Function'),metricsgraphicsOutput("igauC",height = "600px")),
  tabPanel(h4('Density'),              metricsgraphicsOutput("igauP",height = "600px")),
  tabPanel(h4('Survival'),             metricsgraphicsOutput("igauR",height = "600px")),
  tabPanel(h4('Hazard'),               metricsgraphicsOutput("igauh",height = "600px")),
  tabPanel(h4('Cumulative Hazard'),    metricsgraphicsOutput("igauH",height = "600px")),
  tabPanel(h4('Quantile'),             metricsgraphicsOutput("igauQ",height = "600px"))
  ))))