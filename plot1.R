electric <- read.table("smaller.txt",sep=";",header=TRUE)
names(electric)
electric$Date <- as.Date(electric$Date, "%d/ %m/ %Y")

# First time just to see it on my screen
hist(electric$Global_active_power, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# second time to write it to the file
png(file="plot1.png")
hist(electric$Global_active_power, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()