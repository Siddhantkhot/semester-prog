cat("1.proper variable length \n2. improper variable length\n")
choice<-readline("enter your choice")
if(choice=='1')
{
  a<-c(4,5,6,1,5,3)
  b<-c(2,4)
  largest<-ifelse(a>b,a,b)
  cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n length elements are:",largest)
}else if(choice=='2')
{
  a<-c(4,5,6,1,5)
  b<-c(2,4)
  largest<-ifelse(a>b,a,b)
  cat("\n vector 1=",a)
  cat("\n vector 2=",b)
  cat("\n length elements are:",largest,"\n")
}else
{
  cat("\n invalid choice")
}
