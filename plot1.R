electric <- read.table("smaller.txt",sep=";",header=TRUE)
electric$timestamp = strptime(paste(electric$Date, electric$Time),
                              format="%d/%m/%Y %H:%M:%S", tz="UTC")

# First time just to see it on my screen
hist(electric$Global_active_power, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# second time to write it to the file
png(file="plot1.png", width=480, height=480)
hist(electric$Global_active_power, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()