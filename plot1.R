power.file<- read.csv2("~/Downloads/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

twodaydata<- power.file[power.file$Date %in% c("1/2/2007", "2/2/2007"),]
gap<- as.numeric(twodaydata$Global_active_power)

png("plot1.png" , width = 480, height = 480)
hist(gap, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatt)")
dev.off()


