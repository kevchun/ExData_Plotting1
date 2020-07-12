setwd("C:/Users/kevin/Desktop/R Programming/Exploratory data analysis/exdata_data_household_power_consumption")
data<-read.csv2("household_power_consumption.txt")
data$Date<-as.Date(as.character(data$Date),"%d/%m/%Y")
data<-data[data$Date>as.Date("2007-01-31"),]
data<-data[data$Date<as.Date("2007-02-03"),]
data$dayformat<-with(data, as.POSIXct(paste(Date, Time)))
plot(data$dayformat,data$Sub_metering_1, type="l",ylab="Energy sub metering", xlab=" ")
lines(data$dayformat,data$Sub_metering_2, type = "l", col = "red")
lines(data$dayformat,data$Sub_metering_3, type = "l", col = "blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.copy(png, file="plot3.png")
dev.off()