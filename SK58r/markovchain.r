library(markovchain)
library(diagram)
s0<-matrix(c(0.43,0.57),nrow=1,byrow=TRUE)
colnames(s0)<-c("pepsi","Coke")
rownames(s0)<-c("Shares")
cat("\nCurrent market share of pepsi and coke\n")
print(s0)
transmat<-matrix(c(0.7,0.3,0.1,0.9),nrow=2,byrow=TRUE)
disc_trans<-new("markovchain",transitionMatrix=transmat,states=c("Pepsi","coke"))
cat("\nTransition Matrix\n")
print(disc_trans)
plot(disc_trans)

cat("\nAfter one month following will be the market share\n")
s1=s0%*%transmat
colnames(s1)<-c("PEpsi","coke")
rownames(s1)<-c("Shares")
print(s1)

cat("\nAfter two month following will be the market share\n")
s2<-s1%*%transmat
colnames(s2)<-c("Pepsi","coke")
rownames(s2)<-c("shares")
print(s2)