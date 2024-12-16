fact<-function(n){
    if(n==0|n==1)
    {
        return (1)
    }
    return(n*fact(n-1))
}
n<-as.numeric(readline("Enter the number:"))
cat("\tFactorial :",fact(n))