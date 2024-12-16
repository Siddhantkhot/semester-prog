#include<stdio.h>
int max(int a,int b)
{
    return (a>b)?a:b;
}
capacity w
int knapsack(int w,int weight[],int value[],int n){
    int i,w;
    int k[n+1][w+1];

    for(i=0;i<n;i++){
        for(w=0;w<n;w++){
            k[i][w] =0;
            else if(weight[i-1] <=w)
            k[i][w] = max(value[i-1] + k[i-1][w-weight[i-1]],h[i-1][w]);
            else k[i][w] = k[i-1][w];

        }
    }
    return k[n][w];
}
int main(){
    int n;
    printf("Enter the number od  items:");
    scanf("%d",&n);
    int value[n];
    int weight[n];
    int i;
    printf("\nEnter the items weight and value \n");
    for(i=0;i<n;i++){
        scanf("%d%d",&weight[i],&value[i]);

    }
    int w;
    printf("\n Enter the capacity of knapsack:");
    scanf("%d",&w);
    printf("\n Maximum value in a 0-1 knapsack :%d",knapsack(w,weight,value,n));
    return 0;

}