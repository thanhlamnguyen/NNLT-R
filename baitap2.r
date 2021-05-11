getwd()
setwd("F:\\R")
squid<- read.table(file="squid.txt", header = TRUE )
squid

#S???p x???p m???t c???t MOnth theo th??? t??? tang d???n
ord1 <- order(squid$Month)
ord1
#Hi???n th??? lu�n c??? b???ng squid theo th??? t??? moth

fff <-squid[ord1,]
fff

#L???y c???t GSI, theo th??? t??? s???p x???p c???a Month
squid$GSI[ord1]

#N???i 2 t???p d??? li???u l???i v???i nhau
sq1 <- read.table(file = "squid1.txt", header = TRUE)
sq2 <- read.table(file = "squid2.txt", header = TRUE)
sqMerge <- merge(sq1, sq2, by = "Sample")
sqMerge

#Xu???t d??? li???u
squidM <- squid[squid$Sex==1,]
write.table(squidM, file="MaleSquid.txt", sep = " ", quote = FALSE, append= FALSE, na="NA")
#sep: Ngan c�ch gi???a c�c c???t d??? li???u l� d???u sapce
#quote=FALSE: ngan ch???n c�c k� t??? d???c bi???t ??? trong ph???n headings
#append= FASLE: t???o 1 file m???i 
#na="NA": � d??? li???u n�o tr???ng th� di???n v�o d� l� NA
write.table(squidM, file="MaleSquid2.txt", sep = ",", quote = TRUE, append= FALSE, na="NA")
