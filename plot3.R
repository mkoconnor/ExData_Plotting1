source("readdata.R")

png(filename="plot3.png", width=480, height=480)

## repeat time 3 times and concatenate the sub meterings to get all the points
## on one plot (so that range will be right)
plot(rep(data$Time,3),c(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3), type="n", xlab="", ylab="Energy sub metering")

lines(data$Time, data$Sub_metering_1,col="black")
lines(data$Time, data$Sub_metering_2,col="red")
lines(data$Time, data$Sub_metering_3,col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")

dev.off()
