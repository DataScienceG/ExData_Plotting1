PC_Data_File <- "household_power_consumption.txt" 
PC_Data <- read.table(PC_Data_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

subSetPC_Data <- PC_Data[PC_Data$Date %in% c("2/1/2007","2/2/2007") ,] 
 
 

Global_active_power<- as.numeric(subSetPC_Data$Global_active_power) 
png("plot1.png", width=480, height=480) 
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
dev.off() 

 

