#7.5 Xem l???i h�m plot
#
methods(plot)
help(plot)
#Tham s??? - � nghia
#main   - th�m ti�u d??? cho graph
#xlab, ylab - nh�n c???t x, y
#log: log="x", log="y", log="xy"=> creates logaricthmic axes
#type="p"; "l", "b", "o", "h","s", "n"
#C�u 1: t�m hi???u c�c lo???i plot th�ng qua tham s??? type
setwd("F:/R")
Benthic <-read.table(file="RIKZ2.txt", header=TRUE)
Benthic$fBeach <- factor(Benthic$Beach)
plot(Benthic$Richness ~ Benthic$fBeach)
#C�u 2: T�m hi???u m???t s??? h�m hay d�ng v???i plot
#T�m hi???u � nghia c???a c�c h�m du???i; v???n d???ng k???t
#h???p v???i h�m plot d??? v??? d??? th???
plot.new
win.graph
windows
savePlot
locator
range
matplot
persp
cut
split

plot.new()

win.graph(width = 10, height = 12, pointsize = 12)

window(presidents, 1960, c(1969,4))

a<-locator(1)
a

df<- c(45,76,89,NA,67,34,NA,56,78)
range(df,na.rm = TRUE)

