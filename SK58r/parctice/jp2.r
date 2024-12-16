s<-0
n<-as.numeric(readline("Enter how many elements:"))
for(i in 1:n){
    ele<-as.numeric(readline("Enter the elements:"))
    if(ele<0){
        stop("You have entered negative value..!")
    }else{
        s<-s+ele
    }
}
cat("\tSum of elements:",s)