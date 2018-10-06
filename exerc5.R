library(readxl)

#lendo os dados
data <- read_excel('data/exercicio5.xls')

#mostrando os dados
barplot(data$`Nº pessoas`, legend=c(data$Marcas), main="Gráfico de barras sobre carros", 
        xlab="Marcas",col=c("darkblue","red","green", "yellow", "purple"),
        ylim = c(0, 1.2* max(data$`Nº pessoas`, na.rm = T)))