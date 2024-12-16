res<-data.frame(
    gender=c("m","f","f","m","m"),
    sub1 = c(85,95,64,75,65),
    sub1 = c(82,96,64,75,65),
    sub1 = c(86,92,62,73,62),
)
cat("The given data set is :")
print(res)

cat("\n Average marks scored in all subjects:")
print(sapply(result[,-1]),mean)

cat("The gender wise avg marks scored in one subject:")
print(tapply)