
source("plot.R")
options(scipen=999)
with(data, 
     hist(Global_active_power,  
          main = "Global Active Power",
          col="red", 
          xlab = "Global Active Power (kilowattes)", 
          ylab = "Frequency"))

dev.copy(png, file = "plot1.png")
dev.off()

