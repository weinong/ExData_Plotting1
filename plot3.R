data <- read.table("data.txt", header=T, sep=";")
data$t <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y%H:%M:%S")
png("plot3.png", width=480, height=480)
plot(data$t,data$Sub_metering_1, 
     type="l", xlab="", 
     ylab="Energy sub metering", col="black")
lines(data$t, data$Sub_metering_2, type="l", col="red")
lines(data$t, data$Sub_metering_3, type="l", col="blue")

legend("topright", 
       lty=c(1, 1, 1, 1), 
       col=c("black", "red", "blue"), 
       legend=
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()