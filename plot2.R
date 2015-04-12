data1 <- read.table("C:/Users/Brent/Documents/household_power_consumption.txt", header = TRUE, sep = ";")
data2 <- data1[ which(data1$Date == "1/2/2007"),]
data3 <- data1[ which(data1$Date == "2/2/2007"),]
data4 <- rbind(data2,data3)
datetime <- paste(data4$Date, data4$Time)
datetime1 <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
plot(datetime1,
	as.numeric(as.character(data4$Global_active_power)), 
	type = "l", 
	xlab = "",
	ylab = "Global Active Power (kilowats)")
