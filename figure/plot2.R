setwd("C:/Users/kevin/Desktop/R Programming/Exploratory data analysis/exdata_data_household_power_consumption")
data<-read.csv2("household_power_consumption.txt")
data$Date<-as.Date(as.character(data$Date),"%d/%m/%Y")
data<-data[data$Date>as.Date("2007-01-31"),]
data<-data[data$Date<as.Date("2007-02-03"),]
data$Global_active_power<-as.numeric(data$Global_active_power)
data$dayformat<-with(data, as.POSIXct(paste(Date, Time)))
plot(data$dayformat,data$Global_active_power, type="l", ylab="Global_Active_Power(kilowatts)",xlab=" ")
dev.copy(png, file="plot2.png")
dev.off()