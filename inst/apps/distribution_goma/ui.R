ui = fluidPage(theme = teachingApps::add_theme(getShinyOption("theme")), 
               teachingApps::add_css(),
               
sidebarLayout(
  sidebarPanel(width = 3,
    sliderInput("rangegoma", 
                label = "Range",
                min = 0, 
                max = 50, 
                value = c(0,20)),
    sliderInput("th.goma", 
                label = h2(HTML("Scale (&theta;)")),
                min = 0.5, 
                max = 10, 
                step = 0.5, 
                value = 1, 
                animate = TRUE),
    sliderInput("ze.goma", 
                label = h2(HTML("Shape 1 (&zeta;)")),
                min = 0.5, 
                max = 10, 
                step = 0.5, 
                value = 1, 
                animate = TRUE),
    sliderInput("et.goma", 
                label = h2(HTML("Shape 2 (&eta;)")),
                min = 0.5, 
                max = 10, 
                step = 0.5, 
                value = 1,
                animate = TRUE)),

  mainPanel(width = 9,
 tabsetPanel(type = 'pills',
  tabPanel('Distribution Function',
           metricsgraphicsOutput("gomaC",height = "600px")),
  tabPanel('Density',              
           metricsgraphicsOutput("gomaP",height = "600px")),
  tabPanel('Survival',             
           metricsgraphicsOutput("gomaR",height = "600px")),
  tabPanel('Hazard',               
           metricsgraphicsOutput("gomah",height = "600px")),
  tabPanel('Cumulative Hazard',    
           metricsgraphicsOutput("gomaH",height = "600px")),
  tabPanel('Quantile',             
           metricsgraphicsOutput("gomaQ",height = "600px"))))))