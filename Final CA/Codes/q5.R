poiss1 <-dpois(0:10 , lambda = 5)
poiss2 <-dpois(0:100 , lambda = 50)
poiss3 <-dpois(0:1000 , lambda = 500)
plot(poiss1) 
plot(poiss2)
plot(poiss3)


mean_5_sample <- c(1:5)
for(x in c(1:5)){
  poiss_rand <- rpois(50,4)
  mean_5_sample[x] <- mean(poiss_rand)
}
final_5_mean = mean(mean_5_sample)
plot(mean_5_sample) + abline(h=final_5_mean , col = "red" )

mean_10_sample <- c(1:10)
for(x in c(1:10)){
  poiss_rand <- rpois(50,4)
  mean_10_sample[x] <- mean(poiss_rand)
}
final_10_mean = mean(mean_10_sample)
plot(mean_10_sample) + abline(h=final_10_mean , col = "red" )


mean_500_sample <- c(1:500)
for(x in c(1:500)){
  poiss_rand <- rpois(50,4)
  mean_500_sample[x] <- mean(poiss_rand)
}
final_500_mean = mean(mean_500_sample)
plot(mean_500_sample) + abline(h=final_500_mean , col = "red" )


mean_5000_sample <- c(1:5000)
for(x in c(1:5000)){
  poiss_rand <- rpois(50,4)
  mean_5000_sample[x] <- mean(poiss_rand)
}
final_5000_mean = mean(mean_5000_sample)
plot(mean_5000_sample) + abline(h=final_5000_mean , col = "red" )

