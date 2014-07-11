electric <- read.table("smaller.txt",sep=";",header=TRUE)
electric$timestamp = strptime(paste(electric$Date, electric$Time),
                              format="%d/%m/%Y %H:%M:%S", tz="UTC")
# One time for me to look at
plot(electric$timestamp,
     electric$Global_active_power, 
     type="l", 
     ylab= "Global Active Power (kilowatts)",
     xlab="")

# and one time for the plot
png(filename="plot2.png", width=480, height=480)
plot(electric$timestamp,
     electric$Global_active_power, 
     type="l", 
     ylab= "Global Active Power (kilowatts)",
     xlab="")
dev.off()