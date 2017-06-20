file <- "D:/Documents/Coursera/Course 4/household_power_consumption/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataSub <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

date <- strptime(paste(dataSub$Date, dataSub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
sm1 <- as.numeric(dataSub$Sub_metering_1)
sm2 <- as.numeric(dataSub$Sub_metering_2)
sm3 <- as.numeric(dataSub$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(date, sm1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(date, sm2, col = "red", type = "l")
lines(date, sm3, col = "blue", type = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1, col = c("black", "red", "blue"))
dev.off()