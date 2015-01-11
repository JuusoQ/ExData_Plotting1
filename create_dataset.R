datafile <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#Download data and extract csv from it
#Valuable resource for this was: http://stackoverflow.com/questions/3053833/using-r-to-download-zipped-data-file-extract-and-import-data
fn <- "zipfile"
download.file(datafile, destfile = fn,method="curl")


hpc <- read.table(unz(fn, "household_power_consumption.txt"), sep=";", header=TRUE,na.strings = "?",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

hpc$DateTime <- paste(hpc$Date, hpc$Time, sep=" ")

hpc$DateTime <- strptime(hpc$DateTime, format="%d/%m/%Y %H:%M:%S")

hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

hpc <- subset(hpc, Date == as.Date("2007-02-01") |  Date == as.Date("2007-02-02"))