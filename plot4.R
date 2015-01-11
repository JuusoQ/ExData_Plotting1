if(!exists("hpc")) {
  source("create_dataset.R")
}


png(filename = "plot4.png")
par(mfrow = c(2,2))

plot(hpc$DateTime, hpc$Global_active_power, xlab="",  yaxt='n',type="l", ylab="Global active power")

plot(hpc$DateTime, hpc$Voltage, type="l", xlab = "datetime", ylab="Voltage")

plot(hpc$DateTime,hpc$Sub_metering_1,type="l",xlab="", ylab="Energy sub metering")
points(hpc$DateTime,hpc$Sub_metering_2,type="l",col="red")
points(hpc$DateTime,hpc$Sub_metering_3,type="l", col="blue")
#legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1)
#for some reason legend for this plot didn't work. 
plot(hpc$DateTime, hpc$Global_reactive_power, type="l", xlab="datetime", ylab="Global reactive power")
dev.off()