data<-read.table("E:/R_workspace/household_power_consumption.txt",sep=";",header = TRUE,na.strings = "?")
data$Date<-as.Date(data$Date)
datatouse<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(datatouse$Date, datatouse$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
datatouse<-cbind(SetTime,datatouse)
par(mfrow=c(2,2))
plot(datatouse$SetTime, datatouse$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(datatouse$SetTime, datatouse$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(datatouse$SetTime, datatouse$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datatouse$SetTime, datatouse$Sub_metering_2, type="l", col="red")
lines(datatouse$SetTime, datatouse$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=columnlines)
plot(datatouse$SetTime, datatouse$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")
