result<-data.frame(gender = c('F','M',"M","F","F"),
                   sub1 = c(63,42,51,82,36),
                   sub2 = c(62,85,65,42,68),
                   sub3 = c(80,70,85,90,85))
cat(" ****The given data set is:****\n")
print(result)

#mean using sapply
cat("\n ****The average marks scored by students in all subjects:\n")
print(sapply(result[,-1],mean))

cat("\n ****The gender-wise average marks scored by students in  subject 1 :****\n")
print(tapply(result$sub1,result$gender,mean))

cat("\n ****The gender-wise average marks scored by students in  subject 2 :****\n")
print(tapply(result$sub2,result$gender,mean))

cat("\n ****The gender-wise average marks scored by students in  subject 3 :****\n")
print(tapply(result$sub3,result$gender,mean))

#mean using aggrigate with factorization
print(aggregate(result[,-1],list(result$gender),mean))