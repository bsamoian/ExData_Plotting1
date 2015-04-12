data1 <- read.table("C:/Users/Brent/Documents/household_power_consumption.txt", header = TRUE, sep = ";")
data2 <- data1[ which(data1$Date == "1/2/2007"),]
data3 <- data1[ which(data1$Date == "2/2/2007"),]
data4 <- rbind(data2,data3)
hist( as.numeric(as.character(data4$Global_active_power)), 
	col = "red", 
	main = "Global Active Power", 
	xlab = "Global Active Power (kilowats)", 
	ylab = "Frequency")
