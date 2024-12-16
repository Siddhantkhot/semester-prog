sum<-0
n<-as.numeric(readline("how many elements:"))
for(i in 1:n)
{
  ele<-as.numeric(readline("enter an element:"))
  if(ele<0)
  {
    stop("you have entered negative value")
  }
  sum<-sum+ele
}
cat("sum of num",sum)