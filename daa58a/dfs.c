#include<stdio.h>
int a[20][20],visited[20],n;
void dfs(int v)
{
	int i;
	for(i=0;i<n;i++)
	{
		if(a[v][i]!=0 && visited[i]==0)
		{
			visited[i]=1;
			printf("%d",i);
			dfs(i);
		}
	}
}

void main()
{
	int v,j,i;
	printf("\n enter the number of vertices");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		visited[i]=0;
	}
	printf("\n enter the adjacency matrix \n");
	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			scanf("%d",&a[i][j]);
		printf("\n enter the starting vertex");
		scanf("%d",&v);
		printf("\n DFS traversal is");
		visited[v]=1;
		printf("-> %d",v);
		dfs(v);
}
