#calculate mean mod and median
cal_mean <- function(v)
{
    return(mn<-sum(v)/length(v))
}
cal_median <- function(v)
{
    s<-sort(v)
    len<-length(s)
    mid<-as.integer(len/2)
    if(len%%2 ==0)
    {
        mn <- (s[mid]+s[mid+1])/2
    }
    else
    { 
      mn <-s[mid+1] 
    }
    return(mn) 
}
cal_mode <- function(v)
{
    t <-table(v)
    md<-as.numeric(names(sort(t,decreasing = T)[1]))
    return(md)
}
print("Enter the data set of student marks:\n")
v<-scan()
cat("given marks data set:\n",v)
cat("\n\nmean:",cal_mean(v))
cat("\n\nbuilt in function  mean:",mean(v))
cat("\n\nmedian:",cal_median(v))
cat("\n\nbuilt in function median:",median(v))
cat("\n\nmode:\n",cal_mode(v))

