#quick sort
qs <- function(v){
    if(length(v)<=1)return(v)
    pivot <- v[1]
    rem <- v[-1]
    sv1 <- rem[rem<pivot]
    sv2 <-rem[rem>=pivot]
    sv1 <-qs(sv1)
    sv2 <-qs(sv2)
    return(c(sv1,pivot,sv2))
}
#binary search
bs <- function(v,key,l,h){
    if(l>h)return("Element not found")
    m<-as.integer((l+h)/2)
    if(key == v[m])
    {
        return("Search successful")
    }else if(key<v[m]){
        return(bs(v,key,l,m-1))
    }else if (key>v[m]) {
       return(bs(v,key,m+1,h))
    }
}
print("Enter unsorted elements:")
v<-scan()
ele<-as.numeric(readline("Enter an element to be searched:"))
v<-qs(v)
print(bs(v,ele,1,length(v)))