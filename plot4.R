#Plot 4

png(filename='plot4.png', width=480, height=480, units='px')

par(mfrow=c(2,2))

with(data, {
  plot(Global_active_power~Time, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~Time, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~Time, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Time,col='Red')
  lines(Sub_metering_3~Time,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~Time, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

dev.off()
