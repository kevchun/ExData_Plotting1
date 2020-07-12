setwd("C:/Users/kevin/Desktop/R Programming/Exploratory data analysis/exdata_data_household_power_consumption")
data<-read.csv2("household_power_consumption.txt")
data$Date<-as.Date(as.character(data$Date),"%d/%m/%Y")
data<-data[data$Date>as.Date("2007-01-31"),]
data<-data[data$Date<as.Date("2007-02-03"),]
data$Global_active_power<-as.numeric(data$Global_active_power)
hist(data$Global_active_power,col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()