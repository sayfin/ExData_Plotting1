power.file<- read.csv2("~/Downloads/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

twodaydata<- power.file[power.file$Date %in% c("1/2/2007", "2/2/2007"),]
gap<- as.numeric(twodaydata$Global_active_power)

png("plot2.png" , width = 480, height = 480)
plot(gap, ylab = "Global Active Power (kilowatt)", type = "l", xlab = "", xaxt = "n")

n<- nrow(twodaydata)
x<- c(1, n/2, n)

axis(1, labels = c("Thursday", "Friday", "Saturday") , at=x)
dev.off()