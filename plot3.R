#If the data is not transformed,  power$Sub_metering_1 and power$Sub_metering_2
#stretch at around 10 => so I transform all relevant data classes by fisrt transforming to character and then to numeric
power$Sub_metering_1 <- as.character(power$Sub_metering_1)
power$Sub_metering_1 <- as.numeric(power$Sub_metering_1)
power$Sub_metering_2 <- as.character(power$Sub_metering_2)
power$Sub_metering_2 <- as.numeric(power$Sub_metering_2)
power$Sub_metering_3 <- as.character(power$Sub_metering_3)
power$Sub_metering_3 <- as.numeric(power$Sub_metering_3)

#plot the first graph
plot(power$DT, power$Sub_metering_1, typ='l',
     xlab ="", ylab = "Energy sub metering")

#plot the other two graphs in respective colours
lines(power$DT, power$Sub_metering_2, col = "red")
lines(power$DT, power$Sub_metering_3, col = "blue")

#add a legend that shows long lines or width 1 in the respective colors
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "blue","red"), lwd=1)
