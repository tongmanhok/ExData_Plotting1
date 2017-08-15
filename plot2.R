#Plot 2

png(filename='plot2.png', width=480, height=480, units='px')

Sys.setlocale(category = "LC_ALL", locale = "english")

plot(data$Global_active_power~data$Time, type="l", ylab="Global Active Power (kilowatts)", xlab="")


dev.off()
