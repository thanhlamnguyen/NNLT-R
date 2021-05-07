#7. S??? d???ng R cho tính toán xác su???t  
#7.1 Phép hoán v??? (permutation) 
prod(3:1)
prod(10:1)  
#Tìm 10.9.8.7.6.5.4  
prod(10:4) 
# Tìm (10.9.8.7.6.5.4) / (40.39.38.37.36)  
prod(10:4) / prod(40:36) 

#T??? h???p (combination) choose(n, k).
choose(5, 2)
#Tìm xác su???t c???p A và B trong s??? 5 ngu???i du???c d???c c??? vào hai ch???c v???:
1/choose(5, 2)
#7.3 Bi???n s??? ng???u nhiên và hàm phân ph???i
#7.3.1 Hàm phân ph???i nh??? phân (Binomial distribution)
dbinom(2, 3, 0.60)
1-pbinom(7, 10, 0.70) #Hàm nh??? phân tích luy
b <- rbinom(100, 20, 0.20) #Mô ph???ng hàm nh??? phân
table(b)
b  
hist(b, main="Number of hypertensive patients")
#7.3.2 Hàm phân ph???i Poisson (Poisson distribution)
#Hàm m???t d??? Poisson (Poisson density probability function).
dpois(2, 1)
dpois(1, 1)
dpois(0, 1)
# P(X ??? 2)
ppois(2, 1)
# 1-P(X ??? 2)
1-ppois(2, 1) 
#7.3.3 Hàm phân ph???i chu???n (Normal distribution)
#Hàm m???t d??? phân ph???i chu???n (Normal density probability function).
height <- seq(130, 200, 1)
plot(height, dnorm(height, 156, 4.6),
     type="l",
     ylab="f(height)",
     xlab="Height",
     main="Probability distribution of height in Vietnamese women")
dnorm(160, mean=156, sd=4.6)
#Hàm xác su???t chu???n tích luy (cumulative normal probability function).
pnorm(150, 156, 4.6)
1-pnorm(164, 156, 4.6)
#???ng d???ng lu???t phân ph???i chu???n:
1-pnorm(120, mean=100, sd=13)
#7.3.4 Hàm phân ph???i chu???n chu???n hóa (Standardized Normal distribution)
height <- seq(-4, 4, 0.1)
plot(height, dnorm(height, 0, 1),
       type="l",
       ylab="f(z)",
       xlab="z",
       main="Probability distribution of height in Vietnamese women")
pnorm(-1.96, mean=0, sd=1)
pnorm(1.96, mean=0, sd=1)
pnorm(1.96) - pnorm(-1.96)
1-pnorm(3.04) #countinue
#Tìm d???nh lu???ng (quantile) c???a m???t phân ph???i chu???n.
qnorm(0.95, mean=0, sd=1)
qnorm(0.975, mean=0, sd=1)
