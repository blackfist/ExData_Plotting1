electric <- read.table("smaller.txt",sep=";",header=TRUE)
electric$Date <- as.Date(electric$Date, "%d/ %m/ %Y")

theDays <- weekdays(electric$Date)

plot(electric$Global_active_power, 
# Alright how do I get the x ticks to be the days of the week held in theDays?
#     theDays,
     type="l", 
     ylab= "Global Active Power (kilowatts)",
     xlab="")
