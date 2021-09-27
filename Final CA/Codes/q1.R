bikeset <- read.csv(file = "E:/rprojects/train.csv" , header  = TRUE , sep = ",")
null_percent <- c(1:11)
for(i in 2:12 ){
  bikevar <- bikeset[ , i]
  null_percent[i-1] <- sum(is.na(bikevar))/length(bikevar)*100
}