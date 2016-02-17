power.file<- read.csv2("~/Downloads/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

twodaydata<- power.file[power.file$Date %in% c("1/2/2007", "2/2/2007"),]
gap<- as.numeric(twodaydata$Global_active_power)

x<- twodaydata$Sub_metering_1
y<- twodaydata$Sub_metering_2
z<- twodaydata$Sub_metering_3

n<- length(x)
png("plot3.png" , width = 480, height = 480)

plot(x, type = "l", ylab = "Energy sub metering", xaxt = "n", xlab ="")
axis(1, at = c(1, n/2, n), labels = c("Thursday", "Friday", "Saturday"))
lines(y, type = "l", col = "red")
lines(z, type = "l", col = "blue")
legend("topright" , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col  = c("black", "red", "blue"),
       lty = c(1,1,1))
dev.off()

