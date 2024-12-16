#include<stdio.h>
#include<stdlib.h>
#define MAX 20
#define TRUE 1
#define FALSE 0
void display(int[], int);
void nqueens(int[], int);
int place (int[], int);
int main()
{
	int i, j, n, x[MAX];
	
	printf("\nEnter the number of queens: ");
	scanf("%d", &n);
	nqueens(x, n);

}
void nqueens(int x[], int n)
{
	int k=0;
	x[0]=-1;
	while(k>=0)
	{
		x[k]=x[k]+1;
		while((x[k]<n)&&(!place(x,k)))
			x[k]=x[k]+1;
		if(x[k]<n)
		{
			if(k==n-1)
			{
				display(x,  n);
				return;
				
			}
			else
			{
				k++;
				x[k]=-1;
				
			}
		}
		else
			k--;
		
	}
}
int place(int x[], int k)
{
	int i; 
	for(i=0; i<k; i++)
	{
		if((x[i]==x[k])||(abs(x[i]-x[k]))==(abs(i-k)))
			return FALSE;
	
	}
	return TRUE;
}
void display(int x[], int n)
{
	int s[MAX][MAX], i, j;
	for(i=0; i<n; i++)
	{
		for(j=0; j<n; j++)
		{
			s[i][j]=0;
			
		}
	}
	for(i=-0; i<n; i++)
		s[i][x[i]]=TRUE;
	printf("\n Solution to %d queens problems is: \n", n);
	for(i=0; i<n; i++)
	{
		for(j=0; j<n; j++)
		{
			printf("%d\t", s[i][j]);
			
		}
		printf("\n");
	}
}