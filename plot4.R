## print out the four demanded graphs together

# setup a 2x2 matrix in row order
par(mfrow = c(2,2), mar = c(4,4,2,2))



# now the plots are filled into the matrix

# plot 1

# plot Global_active_power 
plot(power$DT, power$Global_active_power, 
     typ='l',
     ylab = "Global active Power",
     xlab = ""     
)


# plot 2

# make voltage a numeric variable
v <- as.character(power$Voltage)
v <- as.numeric(v)

# plot the graph with respective lables
plot(power$DT, v, 
     typ='l',
     ylab = "Voltage",
     xlab = "datetime"
)

# plot 3

#plot the first graph
plot(power$DT, power$Sub_metering_1, typ='l',
     xlab ="", ylab = "Energy sub metering")

#plot the otgher two graphs in respective colours
lines(power$DT, power$Sub_metering_2, col = "red")
lines(power$DT, power$Sub_metering_3, col = "blue")


# plot 4

# makeGlobal_reactive_power a numeric variable
gr <- as.character(power$Global_reactive_power)
gr <- as.numeric(gr)

#plot the graph with respective lables
plot(power$DT, gr, 
     typ='l',
     ylab = "Global_reactive_power",
     xlab = "datetime"
)
