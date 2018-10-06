library(readxl)

#lendo os dados
data <- read_excel("../dados/exercicio9.xls")

#estruturando os dados

#sequenciando intervalos
min <- min(data)
max <- max(data)
seq <- seq(4, 24, by=2)

#cálculo distribuição de frequências
#Nota-se que:
  # Se cut com right = true, o intervalo inicial desconsidera o valor 4. logo a primeira coluna dos dados apresenta um número a menos
  # se cut com left = false, não conta o último valor.
d.cut <- cut(data$Salários, seq, right = TRUE)
d.freq <- table(d.cut)
cbind(d.freq)

#plota histograma
hist(data$Salários, breaks = seq,
     main="Histograma de Salário", 
     xlab="Salário",
     ylab="Frequência")
axis(side=1, at=seq(1,24, by=1), labels=seq(1,24, by=1))
axis(side=2, at=seq(1,8, by=1), labels=seq(1,8, by=1))

# salvar pdf do gráfico
pdf("../graficos/ex9.pdf")
hist(data$Salários, breaks = seq,
     main="Histograma de Salário", 
     xlab="Salário",
     ylab="Frequência")
axis(side=1, at=seq(1,24, by=1), labels=seq(1,24, by=1))
axis(side=2, at=seq(1,8, by=1), labels=seq(1,8, by=1))
dev.off()