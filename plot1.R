data<-read.table("E:/R_workspace/household_power_consumption.txt",sep=";",header = TRUE,na.strings = "?")
data$Date<-as.Date(data$Date)
datatouse<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(datatouse$Date, datatouse$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
datatouse<-cbind(SetTime,datatouse)
hist(datatouse$Global_active_power,xlim = c(0,6),xaxt="n",ylim = c(0,1200),yaxt="n",main="Global Active Power",xlab = "Global Active Power (kilowatts)",col = "Red")
axis(side=1,at=c(0,2,4,6))
axis(side=2,at=c(0,200,400,600,800,1000,1200))
