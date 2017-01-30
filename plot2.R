data<-read.table("E:/R_workspace/household_power_consumption.txt",sep=";",header = TRUE,na.strings = "?")
data$Date<-as.Date(data$Date)
datatouse<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(datatouse$Date, datatouse$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
datatouse<-cbind(SetTime,datatouse)
plot(datatouse$SetTime, datatouse$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
