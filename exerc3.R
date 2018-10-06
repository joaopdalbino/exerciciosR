install.packages("WriteXLS")
library("WriteXLS")

#atribui dados a vetores
numero_filho <- c(0,1,2,3,4,5,"mais que 5")
familia <- c(17, 20, 28, 19, 7, 4, 5)

#cria tabela
tabela <- data.frame("Número Filhos"=numero_filho, "Família"=familia)

#cria pasta output
outputdir <- 'output'
dir.create(outputdir, showWarnings = FALSE)

#cria tabela xls em output
WriteXLS(tabela, "output/exe3.xls")

#mediana e moda
mediana <- median(tabela$Família)
moda <- subset(tabela$Família,tabela$Família==max(tabela$Família))

#gerando o gráfico
nome_coluna <- c("moda", "mediana")
eixo <- c(moda, mediana)
tabela2 <- data.frame("Medida"=nome_coluna, "Qtd"=eixo)
plot(tabela2)