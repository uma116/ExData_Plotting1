



# Exploratory Data anaysis assignment1
# The below csv contains only the 1st and 2nd Feb 2017 as the original file is very huge

hldpower<- read.csv("./Household_power_consumption.csv", colClasses =c("character","character","numeric","numeric","numeric", "numeric","numeric","numeric","numeric"))

Dt <- strptime(paste(hldpower$�..Date, hldpower$Time,sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(Dt,hldpower$Sub_metering_1,type="l",xlab=" ",ylab="Energy sub metering")

lines(Dt,hldpower$Sub_metering_2,type="l",col="red")

lines(Dt,hldpower$Sub_metering_3,type="l",col="blue")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty= 1, lwd=2, col = c("black","red","blue"))

dev.off()