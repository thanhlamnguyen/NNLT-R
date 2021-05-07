#3.1 Các d???t tên trong R
my.object <- rnorm(10) 

My.object.u <- 15  
my.object.L <- 5  
My.object.u + my.object.L  
#3.2 H??? tr??? trong R
help(lm)
?lm

#4 Cách nh???p d??? li???u vào R
#4.1 Nh???p s??? li???u tr???c ti???p: c()
age <- c(50,62, 60,40,48,47,57,70,48,67)  
insulin <- c(16.5,10.8,32.3,19.3,14.2,11.3,15.5,15.8,16.2,11.2)
tuan <- data.frame(age, insulin)  
tuan
setwd('F:\\R')  
save(tuan, file='tuan.rda')
#4.2 Nh???p s??? li???u tr???c ti???p: edit(data.frame()) 
ins <- edit(data.frame())  
#4.3 Nh???p s??? li???u t??? m???t text file: read.table 
setwd('F:\\R')  
chol <- read.table('micro.csv', header=TRUE)  
chol
names(chol)
save(chol, file="chol.rda") 
#4.5 Nh???p s??? li???u t??? m???t SPSS: read.spss 
library(foreign) 
setwd("F:\\R")  
testo <- read.spss("testo.sav", to.data.frame=TRUE)  
#4.6 Thông tin v??? d??? li???u  
attach(chol)  
is.data.frame(chol)  
dim(chol) 
names(chol)  
#4.7 T???o dãy s??? b???ng hàm seq, rep và gl 
x <- (1:12)  
x  
seq(12)
x <- (12:5)  
x 
seq(4, 6, 0.25)  
seq(length=10, from=2, to=15)  
rep(10, 3)
rep(c(1:4), 3)  
rep(c(1.2, 2.7, 4.8), 5) 
gl(2, 8)
gl(3, 5)
gl(2, 10, length=20) 
gl(2, 2, length=20)  
gl(2, 5, label=c("C", "T")) 
rep(1:4, c(2,2,2,2)) 
rep(1:4, each = 2) 
#Ngày gi??? tháng
x <- .leap.seconds[1:3] 
rep(x, 2) 
rep(as.POSIXlt(x), rep(2, 3)) 
# Biên t???p s??? li???u  
#5.1 Tách r???i d??? li???u: subset 
setwd("F:\\R")  
chol <- read.table("chol.rda", header=TRUE)  
attach(chol) 
nam <- subset(chol, sex=="Nam")  
nu <- subset(chol, sex=="Nu") 
old <- subset(chol, age>=60)  
dim(old) 
n60 <- subset(chol, age>=60 & sex=="Nam")  
dim(n60)  
#5.2 Chi???t s??? li???u t??? m???t data .frame  
data2 <- chol[, c(1,3,7)]  
data3 <- chol[1:10, c(1,3,7)]  
print(data3
        

