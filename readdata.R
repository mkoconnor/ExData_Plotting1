data <- read.table("filtered_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- data[data$Date==as.Date("2007-02-01") | data$Date==as.Date("2007-02-02"),]
data$Time <- mapply((function(d,t) strptime(paste(as.character(d), " ",t), format="%Y-%m-%d %H:%M:%S")),data$Date,data$Time, SIMPLIFY=FALSE)
