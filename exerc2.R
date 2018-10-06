install.packages("readxl")

library("readxl")

#lendo xls e atribuindo os valores da coluna Casa para coluna
data <- read_xls("data/exercicio2.xls")
coluna <- data$Casas

#a) frequência
frequencia <- ftable(data)
#cria tabela com frequências
tabela <- as.data.frame(frequencia)

#b) 1. medidas de posição
  #média
  media[[1]] <- mean(coluna)
  #mediana
  mediana <- median(coluna)

  #moda
  moda <- subset(data,data==max(data))

  #quartil
  quartil <- quantile(coluna)

  #percentil
  perc <- seq(.01,.99,.01)
  percentil <- quantile(coluna, perc)
  
  #decil
  dec <- seq(0.10,0.9,0.1)
  decil <- quantile(coluna)
  
#b) 2. medidas de dispersão
  
  #valor mínimo
  vlr_min <- min(coluna)
  
  #valor máximo
  vlr_max <- max(coluna)
  
  #amplitude
  amplitude <- range(coluna)
  
  #variância
  variancia <- var(coluna)
  
  #desvio padrão
  dev <- sd(coluna)
  
  #coeficiente de variação
  coe <-  100*dev/media 
  
  
#c)Gráficos
plot(data$Casas) #gráfico simples de coluna casa
plot(data$Casas, type="h") #gráfico simples de coluna casa