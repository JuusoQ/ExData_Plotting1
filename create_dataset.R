datafile <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#Download data and extract csv from it
temp <- tempfile()
download.file(datafile, destfile = temp,method="curl")


hpc <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", header=TRUE,na.strings = "?",colClasses = c("character","character",rep("numeric",7)))


hpc$DateTime <- paste(hpc$Date, hpc$Time, sep=" ")

hpc$DateTime <- strptime(hpc$DateTime, format="%d/%m/%Y %H:%M:%S")

hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

hpc <- subset(hpc, Date == as.Date("2007-02-01") |  Date == as.Date("2007-02-02"))