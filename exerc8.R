library(readxl)

#lendo os dados
data <- read_excel('data/exercicio8.xls')

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

#histograma
hist(data$values, 
     main="Histograma  de Salário", 
     xlab="Altura",
     ylab="Frequência",
     border="blue", 
     col="green")