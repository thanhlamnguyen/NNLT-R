getwd()
setwd("F:\\R")
Squid <- read.table(file = "squid.txt", header = TRUE)
str(Squid)
Squid$fSex <- factor(Squid$Sex, levels = c(1,2), labels = c("M","F"))
Squid$fSex

#Squid$Sex; 1=>"M"; 2=>"F"
boxplot(GSI ~ fSex, data = Squid)
M1 <- lm(GSI ~ fSex + Location, data = Squid)
M1
summary(M1)

# Hàm               M???c dích
# write.table       Ghi 1 bi???n vào 1 file text
write.table(Z, file = "test.txt")
# order             S???p x???p d??? li???u
order(x)
# merge             Ghép 2 data frame
merge(x, y, by = "ID")
# attach            T???o các bi???n trong data frame d??? có th??? truy c???p tr???c ti???p luôn
attach(Squid)
Sex
# str               Hi???n th??? c???u trúc bên trong 1 d???i tu???ng
str(Location)
# factor            D??? li???u luu tr??? nhóm
