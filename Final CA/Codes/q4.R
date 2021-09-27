biketemp <- bikeset$temp
bikehum <- bikeset$humidity
plot(biketemp, bikehum, main =  "Humidity/Temperature Scatter Plot " ,xlab = "Temperature" , ylab = "Humidity" ,pch = 19,frame = FALSE)

cor(biketemp,bikehum,method = "spearman")
cor(biketemp,bikehum,method = "pearson")


qqplot(biketemp , bikehum , main = "Q-Q plot for humidity/temperature")
