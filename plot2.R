#Format the time vector

#Plot global active power against time vector

datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_ActivePower <- as.numeric(subsetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, global_ActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()