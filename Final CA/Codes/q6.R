bikeset <- read.csv(file = "E:/rprojects/train.csv" , header  = TRUE , sep = ",")
bikehum <- bikeset$humidity
biketemp <- bikeset$temp
samplehum <- sample(bikehum , 200)
sampletemp <- sample(biketemp , 200)

bikereg<-lm(samplehum ~ sampletemp)
plot(sampletemp , samplehum)
abline (lm(samplehum ~ sampletemp) , col = "red")
