file <- "D:/Documents/Coursera/Course 4/household_power_consumption/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataSub <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

GAP <- as.numeric(dataSub$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GAP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()