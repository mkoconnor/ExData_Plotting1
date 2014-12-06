data <- read.table("filtered_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- data[data$Date==as.Date("2007-02-01") | data$Date==as.Date("2007-02-02"),]
data$Time <- strptime(paste(as.character(data$Date),data$Time),format="%Y-%m-%d %H:%M:%S")
