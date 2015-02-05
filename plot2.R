#please excuse that on my German machine, the label for "Thursday" is "Do" ("Donnerstag")!

#plot Global_active_power with the demanded labels
#The data has been limited to the given dates in the script for plot1 already.

plot(power$DT, power$Global_active_power, 
     typ='l',
     xlab ="(excuse German automatic naming: 'Do' = 'Thursday'!)", 
     ylab = "Global active Power (kilowatts)"
     )

