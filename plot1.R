data <- read.table("data.txt", header=T, sep=";")
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()