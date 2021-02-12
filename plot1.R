# Create plots below and save each to a different .png file
source("./Graph.R")


#generate the first plot
par(mar=c(4,4,2,2), mfrow=c(1,1))
hist(
  data$Global_active_power,
  col="red",
  xlab="Global Active Power (kilowatts)",
  main="Global Active Power"
)

#save to png device, default is 480x480 so no
dev.copy(png, "plot1.png")
dev.off()


