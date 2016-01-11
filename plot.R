library(dplyr)
library('lattice')
library('chron')

all_data = read.table("household_power_consumption.csv", header=T, sep=";", stringsAsFactors = F, na.strings = "?")

str(all_data)

all_data$DateTime = strptime(paste(all_data$Date, all_data$Time), "%d/%m/%Y %H:%M:%S")
all_data$DateOnly = as.Date(strptime(all_data$Date, "%d/%m/%Y"))

from = as.Date(strptime('01/02/2007', '%d/%m/%Y'))
to = as.Date(strptime('02/02/2007', '%d/%m/%Y'))               
data = all_data[all_data$DateOnly >= from & all_data$DateOnly <= to,]

summary(all_data)
summary(data)

data$DateTime = chron(dates = data$Date, times = data$Time, format=c('d/m/y','h:m:s'))
