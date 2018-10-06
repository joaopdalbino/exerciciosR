library(readxl)

#lendo os dados
data <- read_excel("../dados/exercicio6.xls")

#abre arquivo pdf para poder salvar o gráfico
pdf("../graficos/ex6.pdf")

#Fonte: https://rstudio-pubs-static.s3.amazonaws.com/72023_670962b57f444c04999fd1a0a393e113.html

#criando gráfico de barras
pc = barplot(data$`Nº pessoas`,
             width = 1, space = 0.2, border = NA, axes = F,
             ylim = c(0, 1.05 * max(data$`Nº pessoas`, na.rm = T)), 
             ylab = "Votos" , cex.names = 0.7, 
             names.arg = data$Qualidade,
             main = "Gráfico de Pareto")
#Customizando gráfico de barras
axis(side = 2, at = c(0, data$`Nº pessoas`), las = 1, col.axis = "grey62", col = "grey62", tick = T, cex.axis = 0.8)
box( col = "grey62")

#Construindo linha de linhas acumuladas
data["freq"] <- NA
data$freq<- round(data$`Nº pessoas` / sum(data$`Nº pessoas`), 3)
data["acumfreq"] <- NA
data$acumfreq <- cumsum(data$freq)
px <- data$acumfreq * max(data$`Nº pessoas`, na.rm = T)
lines(pc, px, type = "b", cex = 0.7, pch = 19, col="cyan4")

#Construindo legenda da do gráfico
axis(side = 4, at = c(0, px), labels = paste(c(0, round( data$acumfreq * 100)) ,"%",sep=""), 
     las = 1, col.axis = "grey62", col = "cyan4", cex.axis = 0.8, col.axis = "cyan4")

#fecha pdf
dev.off()