setwd("F:/R")
### EX 1:
BirdDeath <- read.table("BirdFluDeaths.txt", sep="\t", header = TRUE)
names(BirdDeath)
str(BirdDeath)
par(mfrow= c(1,2), mar= c(3,3,2,1))
#Bi???u d??? pie hi???n th??? t???ng s??? ngu???i ch???t m???i nam
DeathYear <- rowSums(BirdDeath[,2:16])
names(DeathYear) <- BirdDeath[,1]
DeathYear
pie(DeathYear, main = "Total number of deaths per year ", 
    col = rainbow(6),
    clockwise = TRUE
)
#Bi???u d??? pie hi???n th??? t???ng s??? ngu???i ch???t m???i qu???c gia
DeathCountry <- colSums(BirdDeath[,2:16])
names(DeathCountry)
DeathCountry
pie(DeathCountry, main = " Total number of deaths per country", 
    col = gray(seq(0.4, 1.0, length=6)),
    clockwise = TRUE
)

### EX 2:
Vegetation <- read.table("Vegetation2.txt", header = TRUE )
Vegetation
Veg.M <- tapply(Vegetation$R, INDEX = Vegetation$Transect,
                FUN = mean)
Veg.M

Veg.sd <- tapply(Vegetation$R, INDEX = Vegetation$Transect,
                 FUN = sd) 
Veg.sd

Veg.le = tapply(Vegetation$R, INDEX = Vegetation$Transect,
                FUN = length)
Veg.le

Veg.se = Veg.sd / sqrt(Veg.le)
Veg.se

stripchart(Vegetation$R~Vegetation$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="Transect",
           ylab="Richness")
points(1:8, Veg.M, pch=16,
       cex=1.5)
arrows(1:9, Veg.M,
       1:9, Veg.M+Veg.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
arrows(1:9, Veg.M,
       1:9, Veg.M-Veg.se,
       lwd=1.5,
       angle=90,
       length = 0.1)

