shinyUI(navbarPage("Superzip", id="nav",
                   pageWithSidebar(
                     headerPanel('Mapas Cancer'),
                     sidebarPanel(
                       selectInput('cancerm', 'Cancerm', names(Rate3)[-c(1,2)],selected=names(Rate3)[[3]])
                       
                     ),
                     mainPanel(
                       
                       h4("Quantidade"),
                       plotOutput("plot2mapa"),
                       
                       h4("Rate"),
                       plotOutput('plot1mapa'),
                       
                       h4("SMR"),
                       plotOutput("plot3mapa")
                     )
                   ),
                   pageWithSidebar(
                     headerPanel('Cancer'),
                     sidebarPanel(
                       selectInput('cancer', 'Cancer', names(Rate3)[-c(1,2)],selected=names(Rate3)[[3]])
                       
                     ),
                     mainPanel(
                       
                       h4("Quantidade"),
                       plotOutput("plot2"),
                       
                       h4("Rate"),
                       plotOutput('plot1'),
                       
                       h4("SMR"),
                       plotOutput("plot3")
                     )
                   ),
                   pageWithSidebar(
                     headerPanel('Cancer'),
                     sidebarPanel(
                       numericInput('ngrupo', 'Numero de Grupos', value=2,min=1,max=100,step=1),
                       numericInput('grupo','Grupo de Interesse',value=1,min=1,max=100,step=1)
                       
                     ),
                     mainPanel(
                       
                       h4("SMR dos grupos"),
                       plotOutput("plot1g"),
                       
                       h4("Tabela dos Canceres"),
                       tableOutput("tab1")
                       
                     )
                   )
)