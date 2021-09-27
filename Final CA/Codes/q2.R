biketemp <- bikeset$temp
#boxplot(x=biketemp,horizontal =  TRUE ,main = "Temperature Boxplot" , xline = "Temperature" , col = "yellow" , border = "blue")
#bike_quartile <- quantile(biketemp)
#hist(biketemp , main = "Temperature Histogram")
plot(ecdf(biketemp) , main = "Temperature CDF")