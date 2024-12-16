#include<stdio.h>
#include<limits.h>

int sum(int freq[],int i,int j);

 int OptimalSearchTree(int key[],int freq[],int n)
 {
	int cost[n][n];
	for(int i=0;i<n;i++)
		cost[i][i]=freq[i];
	
	for(int L=2;L<=n;L++)
	{
		for(int i=0;i<=n-L+1;i++)
		{
			int j=i+L-1;
			int off_set_sum=sum(freq,i,j);
			cost[i][j]=INT_MAX;
			
			for(int r=i;r<=j;r++)
			{
				int c=((r>i)? cost[i][r-1]:0)+((r<j)? cost[r+1][j]:0)+off_set_sum;
				if(c<cost[i][j])
					cost[i][j]=c;
			}
		}
	}
	return cost[0][n-1];
}

 int sum(int freq[], int i,int j)
 {
	int s=0;
	for(int k=i;k<=j;k++)
		s+=freq[k];
	
	return s;
 }

int main()
{
	int n;
	printf("\n enter the number of keys ");
	scanf("%d",&n);
	
	int key[100],freq[100];
	printf("\n enter the key : \n");
	for(int i=0;i<n;i++)
	{
		scanf("%d",&key[i]);
	}
	printf("\n enter the frequence ");
	for(int i=0;i<n;i++)
	{
		scanf("%d",&freq[i]);
	}
printf("\n cost of optimal BST is %d",OptimalSearchTree(key,freq,n));
return 0;
}