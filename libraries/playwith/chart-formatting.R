#
#    https://www.r-bloggers.com/gui-chart-formatting-with-playwith/
#
library(grid)
library(lattice)
library(playwith) ## (for panel.usertext, etc)
library(gridBase)

## + might need others, often library(latticeExtra).
## Assuming that the data are attached and any
## customised style settings are in place; save with
## myStyle <- trellis.par.get(); then restore with

## trellis.par.set(myStyle)
barplot(c(9, 3, 1, 2, 3, 6, 7), sub = 'A Sub', xlab = 'An XLab', ylab = 'A Ylab')

## set up viewports
pushViewport(viewport(name = 'pageAnnotationVp', yscale = c(1, 0)))
upViewport(0)
local({
  vps <- baseViewports()
  vps$plot$name <- "plot"
  vps$plot$clip <- TRUE
  vps$plot.clip.off <- viewport(xscale = par("usr")[1:2],
  yscale = par('usr')[3:4], clip = 'off',
  name = 'plot.clip.off')
  pushViewport(do.call('vpStack', vps))
})

## draw custom annotations
seekViewport('pageAnnotationVp')
panel.usertext(0.5206897, 0.06666667, 'here is 9!')
panel.arrows(0.4431034, 0.08034188, 0.2534483,0.1213675, length = 0.15, unit = 'inches')
seekViewport('plot')
panel.rect(2.259542, 4.14073, 5.566833, 7.608541)
panel.rect(2.410733, 5.029356, 4.886476, 7.456824)
panel.rect(4.999869, 6.914979, 5.377845, 7.413476)
panel.rect(4.999869, 6.373133, 5.340047, 6.784936)
panel.segments(3.752548, 7.630215, 5.944809, 8.670558)
panel.segments(3.71475, 7.651888, 3.091089, 8.757253)
panel.segments(2.921, 8.605536, 3.147786, 8.887296)
panel.segments(5.793618, 8.822275, 6.039303, 8.583863)
panel.usertext(2.939899, 6.286438, ' Where’s _Why?',
col = 'green3', srt = -30)
upViewport(0)
