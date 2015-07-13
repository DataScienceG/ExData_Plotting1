PC_Data_File <- "household_power_consumption.txt" 
PC_Data <- read.table(PC_Data_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

subSetPC_Data <- PC_Data[PC_Data$Date %in% c("1/2/2007","2/2/2007") ,] 
 
datetime <-strptime(paste(subSetPC_Data$Date, subSetPC_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


Global_active_power<- as.numeric(subSetPC_Data$Global_active_power) 
png("plot2.png", width=480, height=480) 
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") 

dev.off() 

 

