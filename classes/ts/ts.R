X11()

climateZurich <- data.frame (
  maxTemp = c(  2,  5, 10, 12, 19, 21, 23, 23, 17, 13,  7,  3),
  minTemp = c( -1,  0,  3,  4,  9, 11, 13, 15, 10,  7,  1,  0)
)

#
#  TODO: the data is the climate and not specifically for the year 2011.
#
climateZurich_ts <- ts(climateZurich, start=c(2011, 1), end=c(2011, 12), frequency=12)

climateZurich_ts

plot(climateZurich_ts)

z <- locator()
