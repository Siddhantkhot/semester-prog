#include<stdio.h>
int bs(int a[],int x,int low,int high){
    int pos;
    while(low<=high){
        int mid=(low+high)/2;
        if(x==a[mid])
            return mid;
        if(x<a[mid])
            low=mid+1;
        else
            high=mid-1;

    }
    return -1;
    
}
int main(){
    int a[30],low,mid,high,x,i,n,pos;
    printf("Enter how many elements:");
    scanf("%d",&n);
    printf("Enter elements:");
    for(i=0;i<n;i++)
        scanf("%d",&a[i]);
    printf("Enter key element:");
    scanf("%d",&x);
    low=0;
    high=n-1;
    bs(a,x,low,high);
    if(mid==-1){
        printf("Element %d not Found",x);
    }else{
        printf("Element %d Found..",x);
    }
    
}