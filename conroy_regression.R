install.packages('foreign')
library(foreign)

conroy<-file.choose()
dataset = read.spss(conroy, to.data.frame=TRUE)
View(dataset)

# Try a multiple regression
conroy<-lm(formula=AMTDS ~ NMTDS+NMTDCredit+NMTDIL, data=dataset)
summary(conroy)
plot(conroy)
