
source("plot.R")
options(scipen=999)
par(mfrow=c(2,2))


with(data, plot(DateTime, Global_active_power, type = "l", xaxt='n', xlab = "", ylab="Global Active Power"))
axis(1,      at = c(min(data$DateTime), mean(data$DateTime), max(data$DateTime)),
     labels = c("Thu", "Fri", "Sat"))

with(data, plot(DateTime, Voltage, type = "l", xaxt='n', xlab = "datetime", ylab="Voltage"))
axis(1,      at = c(min(data$DateTime), mean(data$DateTime), max(data$DateTime)),
     labels = c("Thu", "Fri", "Sat"))

with(data, plot(DateTime,  Sub_metering_1, type = "l", col="black", xaxt='n', xlab="", ylab="Energy submetering"))
par(new=TRUE)
with(data, lines(DateTime,  Sub_metering_2, type = "l", col="red"))
par(new=TRUE)
with(data, lines(DateTime,  Sub_metering_3, type = "l", col="blue"))

axis(1,      at = c(min(data$DateTime), mean(data$DateTime), max(data$DateTime)),
     labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black", "red", "blue"), )


with(data, plot(DateTime, Global_reactive_power, type = "l", xaxt='n', xlab = "datetime"))
axis(1,      at = c(min(data$DateTime), mean(data$DateTime), max(data$DateTime)),
     labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot4.png")
dev.off()

