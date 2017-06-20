file <- "D:/Documents/Coursera/Course 4/household_power_consumption/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataSub <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

date <- strptime(paste(dataSub$Date, dataSub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(dataSub$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(date, GAP, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()
