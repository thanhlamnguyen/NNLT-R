setwd("F:/R")
owls <- read.table(file = "Owls.txt", header = TRUE, dec = ".")
names(owls)
str(owls)
AllNest <- unique(Owls$Nest)
N <- length(AllNest)

for (i in 1:N) {
  Nest.i <- as.character(AllNest[i])
  print(Nest.i)
  Owlsi <- Owls[Owls$Nest == Nest.i ,]
  YourFileName <- paste(Nest.i, ".jpg", sep = "") 
  jpeg(file = YourFileName)
  plot(x = Owlsi$SiblingNegotiation , y = Owlsi$ArrivalTime, 
       xlab = "Anh/Chi/Em Ruot",
       ylab = "Thoi gian den",
       main = Owlsi)
  dev.off()
}

