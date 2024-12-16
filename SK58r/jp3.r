factorial<-function(n)
{
  if(n==0|n==1)
  {
    return(1)
  }
  return(n*factorial(n-1))
}
n<-as.numeric(readline("enter a number:"))
if(n<0)
{
  cat("enter a positive number")
}else
{
  cat("factorial of",n,"=",factorial(n))
}