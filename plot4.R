electric <- read.table("smaller.txt",sep=";",header=TRUE)
electric$timestamp = strptime(paste(electric$Date, electric$Time),
                              format="%d/%m/%Y %H:%M:%S", tz="UTC")

# One time for me to see
par(mfrow=c(2,2))
plot(electric$timestamp,
     electric$Global_active_power, 
     type="l", 
     ylab= "Global Active Power",
     xlab="")

plot(electric$timestamp,
     electric$Voltage, 
     type="l", 
     ylab= "Voltage",
     xlab="")

plot(electric$timestamp,
     electric$Sub_metering_1, 
     type="l",
     ylab="Energy sub metering",
     xlab="")
points(electric$timestamp, electric$Sub_metering_2, type="l", col="red")
points(electric$timestamp, electric$Sub_metering_3, type="l", col="blue")

plot(electric$timestamp,
     electric$Global_reactive_power, 
     type="l", 
     ylab= "Global_reactive_power",
     xlab="")

# Now one more time for the file
png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(electric$timestamp,
     electric$Global_active_power, 
     type="l", 
     ylab= "Global Active Power",
     xlab="")

plot(electric$timestamp,
     electric$Voltage, 
     type="l", 
     ylab= "Voltage",
     xlab="")

plot(electric$timestamp,
     electric$Sub_metering_1, 
     type="l",
     ylab="Energy sub metering",
     xlab="")
points(electric$timestamp, electric$Sub_metering_2, type="l", col="red")
points(electric$timestamp, electric$Sub_metering_3, type="l", col="blue")

plot(electric$timestamp,
     electric$Global_reactive_power, 
     type="l", 
     ylab= "Global_reactive_power",
     xlab="")
dev.off()
