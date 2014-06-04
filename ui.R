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
                            p("Os canceres são mostrados em ordem decrescente de frequencia. O cancer mais comum foi o Cancer de mama entre mulheres brancas seguido pelo cancer de prostata entre homens brancos. Isso aparamente contradiz o que se espera, que o cancer de pulmao seja o mais frequente, entretanto o site do SEER aponta que os canceres mais frequentes sao os canceres de prostata e mama, superando mesmo o pulmao."),
                            p("Os cancerese mais frequentes sao em ordem decrescente sao mama entre mulheres brancas, prostata entre homens brancos, pulmao e bronquios entre homens brancos seguidos por mulheres brancas, bexiga entre homens brancso e mama in situ feminino entre mulheres brancas")
                            img(src="porcentagem-acumulada-da-incidencia-analise.jpg", height = "1800px", width = "900px"),
                            p("Percebemos que 8 canceres sao responsavei por 30% das incidencias. Sao necessarios 50 canceres para termos 90% da incidencia.")
                            img(src="mapa-de-correlacao-analise.jpg", height = "900px", width = "900px"),
                            p("Existe uma alta correlacao entre os canceres como pode-se observar pelo mapa de calor. Existe uma correlacao maior que 0.75 em 942 combinacoes de canceres e ccorrelacao maior que 9 em 68 combinacoes.")
                            
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