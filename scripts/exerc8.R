library(readxl)

#lendo os dados
data <- read_excel('../dados/exercicio8.xls')

#estruturando os dados
data <- stack(data)
data$ind <- NULL

#sequenciando intervalos
min <- min(data)
max <- max(data)
seq <- seq(1.55, 1.9, by=0.05)

#cálculo distribuição de frequências
d.cut <- cut(data$values, seq)
d.freq <- table(d.cut)
cbind(d.freq)

# salvar pdf do gráfico
pdf("../graficos/ex8.pdf")
hist(data$values, 
     main="Histograma de Altura", 
     xlab="Altura",
     ylab="Frequência",
     border="blue", 
     col="green")
dev.off()
#histograma
