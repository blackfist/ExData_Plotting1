electric <- read.table("smaller.txt",sep=";",header=TRUE)
electric$timestamp = strptime(paste(electric$Date, electric$Time),
                              format="%d/%m/%Y %H:%M:%S", tz="UTC")

# One time for me to see it
plot(electric$timestamp,
  electric$Sub_metering_1, 
  type="l",
  ylab="Energy sub metering",
  xlab="")
points(electric$timestamp, electric$Sub_metering_2, type="l", col="red")
points(electric$timestamp, electric$Sub_metering_3, type="l", col="blue")

# One time for the plot
png(filename="plot3.png", width=480, height=480)
plot(electric$timestamp,
     electric$Sub_metering_1, 
     type="l",
     ylab="Energy sub metering",
     xlab="")
points(electric$timestamp, electric$Sub_metering_2, type="l", col="red")
points(electric$timestamp, electric$Sub_metering_3, type="l", col="blue")
dev.off()