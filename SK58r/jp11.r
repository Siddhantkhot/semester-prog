#program to create an any application of linear regression in multivariate context for predictive purpose
#perform multiple linear regression
model<-lm(formula = mpg~cyl+hp+wt,data = mtcars)
#create new data
new_data<-data.frame(cyl=c(6,4,8),hp=c(110,90,150),wt=c(2.8,2.5,3.5))
# predict the miles per gallon for new data
predictions<-predict(model,newdata=new_data)
cat("The predicted mpg for the cars:\n")
print(predictions)