#read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
#filter useful data
library(dplyr)
DT <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
#set graphic device
png(filename = "plot2.png", width = 480, height = 480)
#plotting
DT$datetime <- as.POSIXct(paste(DT$Date, DT$Time), format = "%d/%m/%Y %H:%M:%S")
with(DT, plot(datetime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power(kilowatts)"))
#shut down device
dev.off()