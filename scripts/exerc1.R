install.packages("readxl")
library("readxl")

#usando xls
data <- read_excel("../dados/exercicio1.xls")

#atribuindo os valores de taxas de juros à coluna
coluna <- data$`Taxas de juros`

#média
media <- mean(coluna)

#mediana
mediana <- median(coluna)

#moda
moda <- subset(data,data==max(data))

#variância
variancia <- var(coluna)

#desvio padrão
dev <- sd(coluna)

#valor mínimo
vlr_min <- min(coluna)

#valor máximo
vlr_max <- max(coluna)

#quartis: Q1 e Q3
quartil <- quantile(coluna)
q1 <- quartil[1]
q3 <- quartil[3]