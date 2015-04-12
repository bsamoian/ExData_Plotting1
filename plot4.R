data1 <- read.table("C:/Users/Brent/Documents/household_power_consumption.txt", header = TRUE, sep = ";")
data2 <- data1[ which(data1$Date == "1/2/2007"),]
data3 <- data1[ which(data1$Date == "2/2/2007"),]
data4 <- rbind(data2,data3)
datetime <- paste(data4$Date, data4$Time)
datetime1 <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
par(mfrow=c(2,2))
(plot(datetime1,
	as.numeric(as.character(data4$Global_active_power)), 
	type = "l", 
	xlab = "",
	ylab = "Global Active Power (kilowats)"))
(plot(datetime1, 
	as.numeric(as.character(data4$Voltage)),
	ylim = c(234,246),
	xlab = "",
	ylab = "Voltage",
	type = "l"))
plot(datetime1, 
	as.numeric(as.character(data4$Sub_metering_1)),
	xlab = " ",
	ylab = "Energy Sub Metering",
	type = "l")
par(new=T)
plot(datetime1, 
	as.numeric(as.character(data4$Sub_metering_2)),
	ylim = c(0,30),
	xlab = "",
	ylab = "",
	type = "l",
	col = "red",
	axes = F)
par(new=T)
plot(datetime1, 
	as.numeric(as.character(data4$Sub_metering_3)),
	ylim = c(0,30),
	xlab = "",
	ylab = "",
	type = "l",
	col = "blue",
	axes = F)
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 3, col=c("black","red","blue"), pch="-")
(plot(datetime1, 
	as.numeric(as.character(data4$Global_reactive_power)),
	ylim = c(0,0.5),
	xlab = "",
	ylab = "Global_reactive_power",
	type = "l"))