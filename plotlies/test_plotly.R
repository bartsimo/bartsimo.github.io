library(plotly)
library(htmlwidgets)



data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv")



fig <- plot_ly(data, x = ~Women, y = ~Men, text = ~School, type = 'scatter', mode = 'markers',
               
               marker = list(size = ~Gap, opacity = 0.5))


fig <- fig %>% layout(title = 'Gender Gap in Earnings per University',
                      
                      xaxis = list(showgrid = FALSE),
                      
                      yaxis = list(showgrid = FALSE))

saveWidget(fig, "testsvg.html")

fig