cat("\n1.addition \n2.substraction \n3.multiplication")
choice<-readline("enter your choice")
if (choice=='1')
{
  a<-as.numeric(readline("enter a:"))
  b<-as.numeric(readline("enter b:"))
  cat("\n addition of number is:",a+b)
}else if(choice=='2')
{
  a<-as.numeric(readline("enter a:"))
  b<-as.numeric(readline("enter b:"))
  cat("\n substraction of number is:",a-b)
}else if(choice=='3')
{
  a<-as.numeric(readline("enter a:"))
  b<-as.numeric(readline("enter b:"))
  cat("\n multiplication of number is:",a*b)
}else
{
  cat("\ninvalid choice")
}