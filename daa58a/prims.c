#include<stdio.h>
#include<stdlib.h>
void prims(int n,int cost[10][10])
{
    int i,j,u,v,min,mincost=0,visited[10],ne=1;
    for(i=1;i<n;i++)
        visited[1]=1;
    printf("The edged considered for MST are:");
    visited[1]=1;
    while (ne<n)
    {
        for(i=1,min=999;i<=n;i++)
            for(j=1;j<=n;j++)
                if(cost[i][j]<min){
                    if(visited[i]==0)
                        continue;
                    else{
                        min=cost[i][j];
                        u=i;
                        v=j;
                    }
                }
                if(visited[u]==0||visited[v]==0){
                    printf("\n edges %d:(%d%d)cost:%d",ne++,u,v,min);
                    mincost+=min;
                    visited[v]=1;
                    cost[u][v]=cost[v][u]=999;

                }
                printf("\n costof mst is:%d",mincost);

    }  
   
}
void main(){
    int i,j,n,cost[10][10];
    printf("Read Number of modes:");
    scanf("%d",&n);
    printf("Read cost matrix:\n");
    for(i=0;i<=n;i++){
        for(j=0;j<=n;j++){

        scanf("%d",&cost[i][j]);
        if(cost[i][j]==0)
            cost[i][j]=999;
        }
    }
    prims(n,cost);
}