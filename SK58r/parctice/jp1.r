cat("\n1.Proper variable lenght\n2.Improper Variable lenght\n")
ch<-as.integer(readline("Enter your choice:\n"));
if(ch==1){
    a<-c(4,5,6,3)
    b<-c(8,9,6,3,5,7,2,1)3
    large<-ifelse(a>b,a,b)
    cat(" Largest:",large)
}else if(ch==2)
{
    a<-c(4,5,6,3)
    b<-c(8,9,6,3,5,7,2)
    large<-ifelse(a>b,a,b)
    cat("\n Largest:",large)
}else
{
    cat("Invalid choice..")
}