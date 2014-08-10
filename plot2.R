Sys.setlocale("LC_TIME", "C")

data <- read.csv("household_power_consumption.txt", sep=";")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
gap <-as.numeric(as.character(data$Global_active_power))
datetime <- paste(as.character(data$Date), as.character(data$Time))
datetime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(datetime, gap, xlab = "", ylab = "Global Active Power (kilowatts)", type="l")
dev.off()