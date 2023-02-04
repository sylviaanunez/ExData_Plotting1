datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_ActivePower <- as.numeric(subsetData$Global_active_power)
global_ReactivePower <- as.numeric(subsetData$Global_reactive_power)
voltage <- as.numeric(subsetData$Voltage)
sub_Metering1 <- as.numeric(subsetData$Sub_metering_1)
sub_Metering2 <- as.numeric(subsetData$Sub_metering_2)
sub_Metering3 <- as.numeric(subsetData$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, global_ActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, sub_Metering1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, sub_Metering2, type="l", col="red")
lines(datetime, sub_Metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, global_ReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()