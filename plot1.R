# Plot 1


if(!exists(hpc)) {
source("create_dataset.R")
}

png(filename = "plot1.png")
hist(hpc$Global_active_power,col = "red",main = "Global active power", xlab = "Global active power (kilowatts)", breaks="Sturges", yaxt='n')
axis(side=2, at=c(0,200,400,600,800,1000,1200))
dev.off()