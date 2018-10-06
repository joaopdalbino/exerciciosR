library(readxl)

#lendo os dados
data <- read_excel('data/exercicio7.xls')

barplot(data$Atendimento, legend=c(data$Áreas), main="Graf. Barra - Qtd. atendimentos e área", 
        xlab="Área",col=c("darkblue","red","green", "yellow", "purple"), ylab="Qtd. Atendimento",
        ylim = c(0, 1.4 * max(data$Atendimento, na.rm = T)))