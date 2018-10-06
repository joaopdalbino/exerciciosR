library(readxl)

#lendo os dados
data <- read_excel('data/exercicio4.xls')
min <- min(data$Salários)
max <- max(data$Salários)

seq <- seq(min, max, by=0.5)

#cálculo distribuição de frequências
d.cut <- cut(data$Salários, seq, right=FALSE)
d.freq <- table(d.cut)
cbind(d.freq)

#histograma
hist(data$Salários, 
     main="Histograma  de Salário", 
     xlab="Salários", 
     border="blue", 
     col="green")
