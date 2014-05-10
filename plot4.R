data <- read.table("data.txt", header=T, sep=";")
data$t <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y%H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
with(data, {
    plot(t, Global_active_power, ylab="Global Active Power", type="l")
    plot(t, Voltage, xlab = "datetime", type="l")
    plot(t, Sub_metering_1, 
         type="l", xlab="", 
         ylab="Energy sub metering", col="black")
    lines(t, Sub_metering_2, type="l", col="red")
    lines(t, Sub_metering_3, type="l", col="blue")
    legend("topright", 
           lty=1, 
           col=c("black", "red", "blue"), 
           bty="n",
           legend=
             c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(t, Global_reactive_power, xlab = "datetime", type="l")
})
dev.off()