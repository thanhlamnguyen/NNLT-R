#7.5 Xem l???i hàm plot
#
methods(plot)
help(plot)
#Tham s??? - Ý nghia
#main   - thêm tiêu d??? cho graph
#xlab, ylab - nhãn c???t x, y
#log: log="x", log="y", log="xy"=> creates logaricthmic axes
#type="p"; "l", "b", "o", "h","s", "n"
#Câu 1: tìm hi???u các lo???i plot thông qua tham s??? type
setwd("F:/R")
Benthic <-read.table(file="RIKZ2.txt", header=TRUE)
Benthic$fBeach <- factor(Benthic$Beach)
plot(Benthic$Richness ~ Benthic$fBeach)
#Câu 2: Tìm hi???u m???t s??? hàm hay dùng v???i plot
#Tìm hi???u ý nghia c???a các hàm du???i; v???n d???ng k???t
#h???p v???i hàm plot d??? v??? d??? th???
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

