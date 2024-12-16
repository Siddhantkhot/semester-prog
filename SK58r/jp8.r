item<-c()
price<-c()
quantity<-c()
n<-as.integer(readline("Enter number of fruits\n"))
cat("Enter records for",n,"fruits\n")
for(i in 1:n)
{
  item[i]<-readline("Enter Fruit name:")
  price[i]<-as.numeric(readline("Enter price:"))
  quantity[i]<-as.numeric(readline("Enter quantity:"))
  cat("\n")
}
fruits<-data.frame(item,price,quantity)
fruits$total<-fruits$price*fruits$quantity

write.table(fruits,file="file.txt")
write.table(fruits,file="file.txt",quote =FALSE,row.names = FALSE)
cat("\nData is written on to file-output\n")
fruits<-read.table("file.txt",header = TRUE)
file.rename("file.txt","HELLO.txt")
fruits<-read.table("HELLO.txt",header = FALSE)
print(fruits)
