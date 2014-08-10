Sys.setlocale("LC_TIME", "C")

data <- read.csv("household_power_consumption.txt", sep=";")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
gap <-as.numeric(as.character(data$Global_active_power))

png("plot1.png", width = 480, height = 480)
hist(gap, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()