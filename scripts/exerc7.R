library(readxl)

#lendo os dados
data <- read_excel("../dados/exercicio7.xls")


# salvar pdf do gráfico
pdf("../graficos/ex7.pdf")

#gera o gráfico
barplot(data$Atendimento, legend=c(data$Áreas), main="Graf. Barra - Qtd. atendimentos e área", 
        xlab="Área",col=c("darkblue","red","green", "yellow", "purple"), ylab="Qtd. Atendimento",
        ylim = c(0, 1.4 * max(data$Atendimento, na.rm = T)))

#fecha pdf
dev.off()

