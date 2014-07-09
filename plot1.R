electric <- read.table("smaller.txt",sep=";",header=TRUE)
names(electric)
electric$Date <- as.Date(electric$Date)

hist(electric$Global_active_power, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

