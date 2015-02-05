##convert the data so that the date and time information is in an  R-readeable format

#read data
household_power_consumption <- read.csv("D:/Dokumente/_stats/R/trainingR/coursera4exploratoryDataAnalysis/courseProject1/household_power_consumption.txt", sep=";")

#paste the two temporal variables in one variables
dt <- paste(household_power_consumption$Date, household_power_consumption$Time)

#convert the temporal information of time and date
DT <- strptime(dt, format= "%d/%m/%Y %H:%M:%S")  

#create new vector that the household_power data is added (by columns) by the temporal information
wholePower <- NULL
WholePower <- cbind(household_power_consumption, DT)

#select the relevant time interval and exclude NAs
power <- WholePower[WholePower$DT >="2007-02-01 00:00:00" &  
                    WholePower$DT < "2007-02-03 00:00:00" &  
                    !is.na(WholePower$DT), ]

#make power$Global_active_power numeric
g <- as.character(power$Global_active_power)
g <- as.numeric(g)

#plot the histogramm with the demanded labels
hist(
  g,  
  col = "red",
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency",
  )
