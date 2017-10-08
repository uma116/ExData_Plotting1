


# Exploratory Data anaysis assignment1
# The below csv contains only the 1st and 2nd Feb 2017 as the original file is very huge

hldpower<- read.csv("./Household_power_consumption.csv", colClasses =c("character","character","numeric","numeric","numeric", "numeric","numeric","numeric","numeric"))

Dt <- strptime(paste(hldpower$ï..Date, hldpower$Time,sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(Dt,hldpower$Global_active_power,type="l",xlab=" ",ylab="Global Active Power (Kilowatts)")

dev.off()