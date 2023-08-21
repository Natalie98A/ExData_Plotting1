getwd()
list.files()
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
filt1<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

filt1$Date <- as.Date(filt1$Date, format = "%d/%m/%Y")
filt1$TS <- as.POSIXct(paste(filt1$Date, filt1$Time, seperator = " "))

png("plot3.png", width=480, height=480)
plot(filt1$TS,filt1$Sub_metering_1, type = "l", xlab="",ylab="Energy sub metering")
lines(filt1$TS,filt1$Sub_metering_2,col="red")
lines(filt1$TS,filt1$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty =c(1,1,1),col=c("black","red","blue"))
dev.off()
