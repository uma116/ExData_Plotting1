

# Exploratory Data anaysis assignment1
# The below csv contains only the 1st and 2nd Feb 2017 as the original file is very huge

hldpower<- read.csv("./Household_power_consumption.csv", colClasses =c("character","character","numeric","numeric","numeric", "numeric","numeric","numeric","numeric"))

png("plot1.png", width=480, height=480)

hist(hldpower$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()