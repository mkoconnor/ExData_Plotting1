source("readdata.R")

png(filename="plot3.png", width=480, height=480)

plot(data$Time,data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3, type="n", xlab="", ylab="Energy sub metering")

line(data$Time, data$Sub_metering_1,col="black")
line(data$Time, data$Sub_metering_2,col="red")
line(data$Time, data$Sub_metering_3,col="blue")

dev.off()




