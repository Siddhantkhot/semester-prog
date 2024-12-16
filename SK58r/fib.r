# fibonacci practise
fibonaci<-function(n)
{
  f1=0
  f2=1
  flag=t
  for(i in 0:n)
  {
    if(n==f1|n==f2)
    return (1)
    else
      f3=f1+f2
      f1=f2
      f2=f3
  }
n<-as.numeric(readline("enter number"))
if(fib(n))
  {
    cat<-("its a fibonacci number")
}else{
    cat<-("its not a fibonacci number")
  }
}
