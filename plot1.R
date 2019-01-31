#read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
#filter useful data
library(dplyr)
DT <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
#set graphic device
png(filename = "plot1.png", width = 480, height = 480)
#plotting
hist(DT$Global_active_power, xlab = "Global Active Power(kilowatts)", col = "red", main = "Global Active Power")
#shut down device
dev.off()