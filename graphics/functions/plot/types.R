#
# https://en.wikibooks.org/wiki/R_Programming/Graphics
#

x1 <- rnorm(50) 

#
# Windows: saved under ~/My Documents.
#
png("plottype.png")
par(mfrow = c(2,2))
  plot(x1, type = "p", main = "points"       , ylab = "", xlab = "")
  plot(x1, type = "l", main = "lines"        , ylab = "", xlab = "")
  plot(x1, type = "b", main = "both"         , ylab = "", xlab = "")
  plot(x1, type = "o", main = "both overplot", ylab = "", xlab = "")
dev.off()
