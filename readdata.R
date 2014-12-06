data <- read.table("~/Downloads/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- data[data$Date==as.Date("2007-02-01") | data$Date==as.Date("2007-02-02"),]
data$Time <- strptime(data$Time,format="%H:%M:%S")
