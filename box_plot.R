#S??? d???ng Boxplots d??? hi???n th??? d??? li???u OWL Data
setwd("F:/R")
# Roulin v� Bersier (2007)
# Xem x�t h�nh vi c???a con c� con xem n� ph???n ???ng nhu th??? n�o?
# Khi m� c� s??? hi???n di???n c???a c� b??? m????
# 21.30 d???n 5.30 qua 2 d�m kh�c nhau
Owls <- read.table(file= "Owls.txt", sep = "\t", header = TRUE)
names(Owls)
str(Owls)
boxplot(Owls$NegPerChick)
par(mfrow = c(2,2), mar= c(3,3,2,1))
boxplot(NegPerChick ~ SexParent, data = Owls)
boxplot(NegPerChick ~ FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment,
        names= c("F/Dep", "M/Dep", "F/Sat", "M/Sat"), 
        data = Owls)
boxplot(NegPerChick ~ Nest, data = Owls)
par(mar=c(2,2,3,3))
boxplot(NegPerChick ~ Nest, data = Owls,
        axes=FALSE, ylim=c(-3,8.5),
        
        )
axis(2, at=c(0,2,4,6,8))
text(x=1:27, y=-1, labels = levels(Owls$Nest),
     cex=0,75, srt=90)
unique(Owls$Nest)

#7.3 Boxplot s??? d???ng cho d??? li???u sinh v???t bi???n RIKZ2.txt
#V??? bi???u d??? Boxplot gi???a Richness ~ Beach

Benthic <- read.table(file="RIKZ2.txt", sep = "\t", header = TRUE)
names(RIKZ)
str(RIKZ)
boxplot(Richness ~ Beach,  data = Benthic,
        col="grey", xlab="Beach", ylab="Richness")

#V??? bi???u d??? boxplot gi???a  ~ Transect 
#Vegatation2.txt
Veg <- read.table(file = "Vegetation2.txt", sep = "\t", header = TRUE)
boxplot(R ~ Transect, data = Veg,
        col="green", xlab = "Transect", ylab = "R")
help(boxplot)

