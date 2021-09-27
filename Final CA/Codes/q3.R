biketemp <- bikeset$temp
temp_sample <- sample(biketemp, 100)
sample_mean <- mean(temp_sample)
sample_var <- var(temp_sample)
sample_std <- sqrt(sample_var)
qqnorm(temp_sample)
critical_t <- qt(0.975 , 99)
lower_bound <- sample_mean - critical_t * sample_std/sqrt(100)
upper_bound <- sample_mean + critical_t * sample_std/sqrt(100) 
#null_hypothesis : h0 = 25
hzero <- 25
x<- (sample_mean - hzero)/sample_std
p_value_bilateral <- 2(1 - ecdf(x))
p_value_unilateral <- (1-ecdf(x))
if (p_value_unilateral<0.05) {
  print("Null Hypothesis is REJECTED with unilateral test")
}
if (p_value_bilateral<0.05) {
  print("Null Hypothesis is REJECTED with bilateral test")
}
