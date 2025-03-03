#include<stdio.h>
int a[20][20],q[20],visited[20],n,f=-1,r=-1;
void bfs(int v)
{
	int i;
	for(i=0;i<n;i++)
	{
		if(a[v][i]!=0 && visited[i]==0)
		{
			r=r+1;
			q[r]=i;
			visited[i]=1;
			printf("->%d",i);
		}
	}
	f=f+1;
	if(f<=r)
		bfs(q[f]);
}
void main()
{
	int v,j,i;
	printf("\n enter the no. of vertices");
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
		f=r=0;
		q[r]=v;
		printf("\n BFS traversal is \n");
		visited[v]=1;
		printf("%d",v);
		bfs(v);
		if(r!=n-1)
			printf("\n bfs is not possible");
} 