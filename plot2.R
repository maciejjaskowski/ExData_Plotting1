
source("plot.R")
options(scipen=999)

with(data, plot(DateTime, Global_active_power, type = "l", xaxt='n', xlab = "", ylab="Global Active Power (kilowatts)"))
axis(1,      at = c(min(data$DateTime), mean(data$DateTime), max(data$DateTime)), 
     labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot2.png")
dev.off()

