getwd()
list.files()
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
head(data)

filt1<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")
png(filename="plot1.png",width=480, height=480)
hist(as.numeric(filt1$Global_active_power), col="red", main="Globla Active Power",xlab="Global Ative Power (Watts)", ylab="Frequency")
dev.off()

