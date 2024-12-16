#include<stdio.h>
int main()
{
  float weight [50],profit[50],ratio[50],Totalvalue,temp,capacity,amount;
  int n,i,j;
  printf("enter the number of items:");
  scanf("%d",&n);
  for(i=0;i<n;i++)
  {
	  printf("enter weight and profit for item[%d]:\n",i);
	  scanf("%f%f",&weight[i],&profit[i]);
  }
  printf("enter the capacity of knapsack:\n");
  scanf("%f",&capacity);
  
  for(i=0;i<n;i++)
	  ratio[i]=profit[i]/weight[i];
  for(i=0;i<n;i++)
	  for(j=i+1;j<n;j++)
		  if(ratio[i]<ratio[i])
		  {
			  temp=ratio[j];
			  ratio[j]=ratio[j];
			  ratio[i]=temp;
			  temp=weight[j];
			  weight[j]=weight[i];
			  weight[i]=temp;
			  
			  temp=profit[j];
			  profit[j]=profit[i];
			  profit[i]=temp;
		  }
		  printf("knapsack problem using greedy algorithm :\n");
		  printf("\n\n p[i] \t\t w[i] \t\t ratio[i]\n");
		  for(i=0;i<n;i++)
		  printf("%f\t %f\t %f\t\n",weight[i],profit[i],ratio[i]);
		  for(i=0;i<n;i++)
		  {
			  if(weight[i]>capacity)
				  break;
			  else{
				  Totalvalue=Totalvalue+profit[i];
				  capacity=capacity-weight[i];
			  }
		  }
		  if(i<n)
			  Totalvalue=Totalvalue+(ratio[i]*capacity);
		  printf("\n the maximum value is:%f\n",Totalvalue);
		  return 0;
}