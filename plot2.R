
if(!exists("hpc")) {
  source("create_dataset.R")
}

png(filename = "plot2.png")
plot(hpc$DateTime, hpc$Global_active_power, type="l", ylab="Global active power",xlab="")
dev.off()