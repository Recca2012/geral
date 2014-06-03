require(shiny)
shinyUI(fluidPage(navbarPage("Canceres", id="nav",
                   tabPanel('Mapas dos Canceres',
                     
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
                   tabPanel('Descritivas e graficos gerais',
                            img(src="incidencia-de-canceres-analise.jpg", height = "1800px", width = "900px"),
                            <p>"Os canceres são mostrados em ordem decrescente de frequencia. O cancer mais comum foi o Cancer no sistema genital masculino com uma frequencia de 2 milhoes nos anos em analise."</p>,
                            img(src="porcentagem-acumulada-da-incidencia-analise.jpg", height = "1800px", width = "900px"),
                            img(src="mapa-de-correlacao-analise.jpg", height = "900px", width = "900px")
                            
                            ),
                   tabPanel('Boxplot dos Canceres',
                    
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
                   tabPanel('Grupo dos Canceres',
                     
                     sidebarPanel(
                       numericInput('ngrupo', 'Numero de Grupos', value=2,min=1,max=100,step=1),
                       numericInput('grupo','Grupo de Interesse',value=1,min=1,max=100,step=1)
                       
                     ),
                     mainPanel(
                       
                       h4("SMR dos centroides do grupo"),
                       plotOutput("plot1g"),
                       
                       h4("Tabela dos Canceres"),
                       dataTableOutput(outputId="tab1")
                       
                     )
                   )
)))