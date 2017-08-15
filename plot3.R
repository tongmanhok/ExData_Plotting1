#Plot 3

png(filename='plot3.png', width=480, height=480, units='px')

with(data,
     plot(Sub_metering_1~Time,type="l",ylab="Energy sub metering")
)

lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")

legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
