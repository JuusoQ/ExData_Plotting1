if(!exists("hpc")) {
  source("create_dataset.R")
}
png(filename = "plot3.png")
plot(hpc$DateTime,hpc$Sub_metering_1,type="l", ylab="Energy sub metering")
lines(hpc$DateTime,hpc$Sub_metering_2,type="l",col="red")
lines(hpc$DateTime,hpc$Sub_metering_3,type="l", col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1)
dev.off()