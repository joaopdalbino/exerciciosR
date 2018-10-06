library(readxl)

#lendo os dados
data <- read_excel("../dados/exercicio5.xls")

#abre arquivo pdf para poder salvar o gráfico
pdf("../graficos/ex5.pdf")

#mostrando os dados
barplot(data$`Nº pessoas`, legend=c(data$Marcas), main="Gráfico de barras sobre carros", 
        xlab="Marcas",col=c("darkblue","red","green", "yellow", "purple"),
        ylim = c(0, 1.2* max(data$`Nº pessoas`, na.rm = T)))

#fecha pdf
dev.off()