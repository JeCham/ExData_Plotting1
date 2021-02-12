# Create plots below and save each to a different .png file
source("./Graph.R")

#generate the second plot
par(mar=c(4,4,2,2))
plot(
  data$datetime, data$Global_active_power,
  type = "l",  col="black",
  ylab="Global Active Power (kilowatts)", xlab ="",
  main=""
)

#save to png device, default is 480x480 so no
dev.copy(png, "plot2.png")
dev.off()


