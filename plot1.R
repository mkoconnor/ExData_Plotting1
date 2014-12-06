data <- read.table("~/Downloads/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- data[data$Date==as.Date("2007-02-01") | data$Date==as.Date("2007-02-02"),]
data$Time <- strptime(data$Time,format="%H:%M:%S")

png(filename="plot1.png", width=480, height=480)

hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()
