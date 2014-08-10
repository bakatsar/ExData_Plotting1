Sys.setlocale("LC_TIME", "C")

data <- read.csv("household_power_consumption.txt", sep=";")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
sm1 <-as.numeric(as.character(data$Sub_metering_1))
sm2 <-as.numeric(as.character(data$Sub_metering_2))
sm3 <-as.numeric(as.character(data$Sub_metering_3))
datetime <- paste(as.character(data$Date), as.character(data$Time))
datetime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)
plot(datetime, sm1, xlab = "", ylab = "Energy sub metering", type="l")
lines(datetime, sm2, col = "red")
lines(datetime, sm3, col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty="solid")
dev.off()
