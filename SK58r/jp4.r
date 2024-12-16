a<-c()
b<-c()
n<-as.numeric(readline("how many elements for first vector : "))
for(i in 1:n)
{
  a[i]=as.numeric(readline("enter the element"))
}
m<-as.numeric(readline("how many  element in second vector:"))
for(j in 1:m)
{
  b[j]<-as.integer(readline("enter the element"))
}
cat("\n 1.addition of vector \n 2. product of vector
    \n 3. largest element in vector \n 4.smallest element in vector")
choice<-readline("enter your choice")
if(choice=='1')
{
  sums<-a+b
  cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n sum of elements are:",sums)
}else if(choice=='2')
{
  product<-a*b
  cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n product of elements are:",product)
}else if(choice=='3')
{
  largest<-ifelse(a>b,a,b)
    cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n largest of elements are:",largest,"\n")
}else if(choice=='4')
{
  smallest<-ifelse(a>b,a,b)
  cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n smallest of elements are:",smallest,"\n")
}else
{
  cat("invalid choice")
}



