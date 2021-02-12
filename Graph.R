# Load data. Please note data should be downloaded from the url in advance
# before running the script.
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

library(dplyr)
filepath <- "./household_power_consumption.txt"

# based on project descriptions and a quick look at the txt file, 
# separator is ";", and "?" denotes NA items.

data_colclass <- c(rep("character", 2),rep("numeric",7) )

data <- read.table(filepath, header = TRUE, sep = ";", na.strings="?", colClasses = data_colclass)
data <- data[data$Date== "2/2/2007"|data$Date== "1/2/2007", ]

# convert the first 2 columns into date and time format
data$datetime <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %T")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data$Time <- strptime(data$Time, format="%T")


